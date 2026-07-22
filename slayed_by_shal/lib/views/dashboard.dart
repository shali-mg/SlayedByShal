import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:slayed_by_shal/configs/colors.dart';
import 'package:slayed_by_shal/models/product.dart';
import 'package:slayed_by_shal/widgets/products_card.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final FocusNode _searchbar = FocusNode();
  int selectedIndex = 0;

  final categories = [
    {
      "title": "Lips",
      "icon": "assets/kissbnw.png",
      "selected": "assets/kisscolored.png",
    },
    {
      "title": "Eyes",
      "icon": "assets/eyesbnw.png",
      "selected": "assets/eyescolored.png",
    },
    {
      "title": "Face",
      "icon": "assets/facebnw.png",
      "selected": "assets/facecolored.png",
    },
    {
      "title": "Skin Care",
      "icon": "assets/skincareblack.png",
      "selected": "assets/skincarecolored.png",
    },
  ];

  List<Product> get filteredProducts {
    return products.where((product) {
      return product.category == categories[selectedIndex]["title"];
    }).toList();
  }

  @override
  void initState() {
    super.initState();
    _searchbar.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _searchbar.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "Shop With Us!",
          style: TextStyle(
            fontFamily: 'Avallon',
            fontSize: 24,
            color: Colors.white,
            shadows: [
              Shadow(
                color: shadowColor,
                offset: const Offset(5, 5),
                blurRadius: 10,
              ),
            ],
          ),
        ),
        backgroundColor: primaryColor,
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: Padding(
            padding: const EdgeInsetsGeometry.fromLTRB(32, 0, 32, 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: _searchbar.hasFocus ? fourthColor : Colors.transparent,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: shadowColor,
                    blurRadius: 10,
                    offset: const Offset(5, 5),
                  ),
                ],
              ),
              child: TextField(
                focusNode: _searchbar,
                decoration: InputDecoration(
                  hintText: "Search Products...",
                  prefixIcon: const Icon(Icons.search),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 10,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Category buttons
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(categories.length, (index) {
                  final isSelected = selectedIndex == index;
                  return Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: SizedBox(
                      width: 100,
                      height: 100,
                      child: OutlinedButton(
                        onPressed: () {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: isSelected
                              ? primaryColor
                              : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          side: BorderSide(
                            color: isSelected
                                ? primaryColor
                                : Colors.grey.shade300,
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              isSelected
                                  ? categories[index]["selected"]!
                                  : categories[index]["icon"]!,
                              width: 40,
                              height: 40,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              categories[index]["title"]!,
                              style: TextStyle(
                                fontFamily: "Avallon",
                                fontSize: 14,
                                color: isSelected ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: filteredProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  final product = filteredProducts[index];
                  return ProductCard(
                    image: product.image,
                    title: product.title,
                    price: product.price,
                    press: () {},
                    onFavoriteTap: () {
                      setState(() {
                        if (wishlist.contains(product)) {
                          wishlist.remove(product);
                        } else {
                          wishlist.add(product);
                        }
                      });
                    },
                    onAddToCart: () {
                      setState(() {
                        if (!cart.contains(product)) {
                          cart.add(product);
                        }
                      });
                    },
                    isSaved: wishlist.contains(product),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

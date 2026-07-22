class Product {
  final String image;
  final String title;
  final String price;
  final String category;
  bool isSaved;

  Product({
    required this.image,
    required this.title,
    required this.price,
    required this.category,
    this.isSaved = false,
  });
}

final products = [
  Product(
    image: "assets/products/lipgloss.jpeg",
    title: "Fenty Beauty Glossbomb",
    price: "300 ksh",
    category: "Lips",
  ),

  Product(
    image: "assets/products/lipstick.jpeg",
    title: "M.A.C Sily Matte Lipstick",
    price: "500 ksh",
    category: "Lips",
  ),

  Product(
    image: "assets/products/lipliner.jpeg",
    title: "M.A.C Chestnut Lipliner",
    price: "250 ksh",
    category: "Lips",
  ),

  Product(
    image: "assets/products/lipoil.jpeg",
    title: "e.l.f Moisturising Lip-Oil",
    price: "300 ksh",
    category: "Lips",
  ),

  Product(
    image: "assets/products/eyeshadow.jpeg",
    title: "Morphe Eyeshadow Pallete E35: Fall",
    price: "1500 ksh",
    category: "Eyes",
  ),

  Product(
    image: "assets/products/eyeliner.jpeg",
    title: "NYX Epic Ink Liner",
    price: "750 ksh",
    category: "Eyes",
  ),

  Product(
    image: "assets/products/eyebrowgel.jpeg",
    title: "NYX Eyebrow Glue",
    price: "200 ksh",
    category: "Eyes",
  ),

  Product(
    image: "assets/products/mascara.jpeg",
    title: "Maybelline Sky High Mascara",
    price: "350 ksh",
    category: "Eyes",
  ),

  Product(
    image: "assets/products/blush.jpeg",
    title: "Juvias Place Blush Palette",
    price: "1200 ksh",
    category: "Face",
  ),

  Product(
    image: "assets/products/concealer.jpeg",
    title: "Milani Concealer",
    price: "850 ksh",
    category: "Face",
  ),

  Product(
    image: "assets/products/foundation.jpeg",
    title: "Born This Way Medium Coverage Foundation",
    price: "2000 ksh",
    category: "Face",
  ),

  Product(
    image: "assets/products/contour.jpeg",
    title: "Fenty Contour Stick",
    price: "1000 ksh",
    category: "Face",
  ),

  Product(
    image: "assets/products/toner.jpeg",
    title: "Byoma Milk Hydrating Toner",
    price: "2000 ksh",
    category: "Skin Care",
  ),

  Product(
    image: "assets/products/moisturiser.jpeg",
    title: "Byoma Gel-Cream Moisturizer",
    price: "2100 ksh",
    category: "Skin Care",
  ),

  Product(
    image: "assets/products/cleanser.jpeg",
    title: "Garnier Micellar Water Cleanser",
    price: "1720 ksh",
    category: "Skin Care",
  ),

  Product(
    image: "assets/products/facemasks.jpeg",
    title: "Collagen Sheet Mask",
    price: "1350 ksh",
    category: "Skin Care",
  ),
];
final List<Product> wishlist = [];

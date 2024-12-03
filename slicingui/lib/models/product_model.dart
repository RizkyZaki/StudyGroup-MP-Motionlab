class Product {
  final String name;
  final double price;
  final String imageUrl;
  final String description;

  Product({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
  });
}

List<Product> productList = [
  Product(
    name: "Mi Band 8 Pro",
    price: 54.00,
    imageUrl: "assets/img/Jam.png",
    description:
        "Built for life and made to last, this Mi Band 8 Pro offers a sleek design with top-notch features for fitness tracking.",
  ),
  Product(
    name: "Lycra Men's Shirt",
    price: 12.00,
    imageUrl: "assets/img/Baju.png",
    description:
        "This Lycra Men's Shirt is perfect for casual or formal wear, offering great comfort and style.",
  ),
  Product(
    name: "Headphones",
    price: 35.00,
    imageUrl: "assets/img/Headset.png",
    description:
        "Experience high-quality sound with these comfortable and durable headphones.",
  ),
  Product(
    name: "Sneakers",
    price: 45.00,
    imageUrl: "assets/img/Sepatu.png",
    description:
        "Stylish and comfortable sneakers perfect for everyday wear or sports activities.",
  ),
];

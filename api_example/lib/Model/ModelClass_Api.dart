class ProductDetail {
  final String title;
  final String image;
  final double price;
  ProductDetail(
      {required this.title, required this.image, required this.price});

  static ProductDetail fromJson(json) {
    return ProductDetail(
      title: json['title'],
      image: json['image'],
      price: json['price'],
    );
  }
}

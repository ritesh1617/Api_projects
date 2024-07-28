class ProductDetail {
  final String title;
  final String image;
  ProductDetail({
    required this.title,
    required this.image,
  });

  static ProductDetail fromJson(json) {
    return ProductDetail(
      title: json['title'],
      image: json['image'],
    );
  }
}

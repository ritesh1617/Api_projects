class ProductDetail {
  final String title;
  final String image;
  final String description;

  ProductDetail({
    required this.title,
    required this.image,
    required this.description,
  });

  static ProductDetail fromJson(json) {
    return ProductDetail(
      title: json['title'],
      image: json['image'],
      description: json['description'],
    );
  }
}

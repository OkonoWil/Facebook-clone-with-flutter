class Article {
  final String image;
  final String description;

  Article({
    required this.image,
    required this.description,
  });

  fromJson(json) {
    return Article(image: image, description: description);
  }
}

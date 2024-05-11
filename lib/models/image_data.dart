class ImageData {
  final String id;
  final String url;
  int likes;
  final int views;
  bool isLiked = false;


  ImageData({required this.id, required this.url, required this.likes, required this.views});

  factory ImageData.fromJson(Map<String, dynamic> json) {
    return ImageData(
      id: json['id'].toString(),
      url: json['webformatURL'],
      likes: json['likes'],
      views: json['views'],

    );
  }
}

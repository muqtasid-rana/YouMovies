class MoviesModel {
  final String title;
  final String description;
  final String thumbnailUrl;
  final String videoUrl;

  MoviesModel({
    required this.title,
    required this.description,
    required this.thumbnailUrl,
    required this.videoUrl,
  });

  factory MoviesModel.fromJson(Map<String, dynamic> json) {
    return MoviesModel(
      title: json['snippet']['title'],
      description: json['snippet']['description'],
      thumbnailUrl: json['snippet']['thumbnails']['high']['url'],
      videoUrl: 'https://www.youtube.com/watch?v=${json['id']['videoId']}',
    );
  }
}

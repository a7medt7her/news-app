import 'package:equatable/equatable.dart';

class ArticalsModle extends Equatable {
  String title;
  String description;
  String urlToImage;

  ArticalsModle({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  factory ArticalsModle.fromjson(Map<String, dynamic> json) {
    return ArticalsModle(
      title: json['title'] ?? 'no title',
      description: json['description'] ?? 'no description',
      urlToImage:
          json['urlToImage'] ??
          'https://thumbs.dreamstime.com/b/no-image-available-icon-photo-camera-flat-vector-illustration-132483141.jpg',
    );
  }
  Map<String, dynamic> tojson() {
    return {
      'title': title,
      'description': description,
      'urlToImage': urlToImage,
    };
  }

  @override
  List<Object?> get props => [title, description, urlToImage];
}

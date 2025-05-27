class MusicService {
  final String title;
  final String description;
  final String iconPath;

  MusicService({
    required this.title,
    required this.description,
    required this.iconPath,
  });

  factory MusicService.fromJson(Map<String, dynamic> json) {
    return MusicService(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      iconPath: json['iconPath'] ?? '',
    );
  }
}

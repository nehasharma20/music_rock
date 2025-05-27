class MusicService {
  final String title;
  final String description;
  final String icon;

  MusicService({required this.title, required this.description, required this.icon});

  factory MusicService.fromJson(Map<String, dynamic> json) {
    return MusicService(
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      icon: json['icon'] ?? 'music_note',
    );
  }
}

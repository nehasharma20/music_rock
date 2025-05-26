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
      title: json['title'].toString() ?? '',
      description: json['description']?.toString() ??'',
       iconPath: json['iconPath']?.toString() ??'',
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'icon': iconPath,
    };
  }


}

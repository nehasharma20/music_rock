import '../model/music_service.dart';

class MusicServiceRepository {
  List<MusicService> fetchServices() {
    return [
      MusicService(
        title: 'Music Production',
        description: 'Custom instrumentals & film scoring',
        iconPath: 'assets/icons/music_production.png',
        bgImage: 'assets/images/music.jpg',
      ),
      MusicService(
        title: 'Mixing & Mastering',
        description: 'Make your tracks Radio-ready',
        iconPath: 'assets/icons/mixing_mastering.png',
        bgImage: 'assets/images/mix.jpg',
      ),
      MusicService(
        title: 'Lyrics Writing',
        description: 'Turn feelings into lyrics',
        iconPath: 'assets/icons/lyrics_writing.png',
        bgImage: 'assets/images/lyrics.jpg',
      ),
      MusicService(
        title: 'Vocals',
        description: 'Vocals that bring your lyrics to life',
        iconPath: 'assets/icons/vocals.png',
        bgImage: 'assets/images/vocals.jpg',
      ),
    ];
  }
}

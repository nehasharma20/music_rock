import 'package:flutter/material.dart';
import '../data/model/music_service.dart';
import '../data/repository/music_service_repository.dart';

class MusicServiceViewModel extends ChangeNotifier {
  final _repo = MusicServiceRepository();

  List<MusicService> _services = [];
  List<MusicService> get services => _services;

  void fetchServices() {
    _services = _repo.fetchServices();
    notifyListeners();
  }
}

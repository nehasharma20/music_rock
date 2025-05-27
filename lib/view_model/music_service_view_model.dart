import 'package:flutter/material.dart';
import '../core/models/music_service_model.dart';
import '../data/repository/music_service_repository.dart';

class MusicServiceViewModel extends ChangeNotifier {
  final MusicServiceRepository _repository = MusicServiceRepository();

  List<MusicService> _services = [];
  List<MusicService> get services => _services;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> fetchServices() async {
    _isLoading = true;
    notifyListeners();
    _services = await _repository.fetchMusicServices();
    _isLoading = false;
    notifyListeners();
  }
}
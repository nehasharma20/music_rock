import 'package:flutter/material.dart';
import '../core/models/music_service_model.dart';
import '../data/repository/music_service_repository.dart';

class MusicServiceViewModel extends ChangeNotifier {
  final _repository = MusicServiceRepository();

  List<MusicService> services = [];
  bool isLoading = true;

  Future<void> fetchServices() async {
    isLoading = true;
    notifyListeners();

    try {
      services = await _repository.fetchMusicServices();
    } catch (e) {
      services = [];
    }

    isLoading = false;
    notifyListeners();
  }
}
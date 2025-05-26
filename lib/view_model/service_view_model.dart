import 'package:flutter/material.dart';
import '../core/di/service_locator.dart';
import '../data/repository/service_repository.dart';
import '../model/music_service.dart';

class ServiceViewModel extends ChangeNotifier {
  final ServiceRepository _repository = getIt<ServiceRepository>();

  List<MusicService> _services = [];
  List<MusicService> get services => _services;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future<void> fetchServices() async {
    _isLoading = true;
    notifyListeners();

    _services = await _repository.fetchServices();

    _isLoading = false;
    notifyListeners();
  }
}

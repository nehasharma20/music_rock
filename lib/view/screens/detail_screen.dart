import 'package:flutter/material.dart';
import '../../core/models/music_service_model.dart';

class DetailsScreen extends StatelessWidget {
  final MusicService service;
  const DetailsScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(service.title),
        backgroundColor: const Color(0xFF5F67EA),
      ),
      body: Center(
        child: Text(
          "You tapped on: ${service.title}",
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

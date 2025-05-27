import 'package:flutter/material.dart';
import '../../core/models/music_service_model.dart';

class MusicServiceCard extends StatelessWidget {
  final MusicService service;

  const MusicServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => Scaffold(
              appBar: AppBar(title: const Text('Service Selected')),
              body: Center(
                child: Text('You tapped on: ${service.title}'),
              ),
            ),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(service.iconPath, height: 50),
              const SizedBox(height: 12),
              Text(service.title, style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Text(service.description, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}

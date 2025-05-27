import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/music_service_view_model.dart';
import '../widgets/music_service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<MusicServiceViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Music Services')),
      body: viewModel.isLoading
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.9,
              ),
              itemCount: viewModel.services.length,
              itemBuilder: (context, index) {
                final service = viewModel.services[index];
                return MusicServiceCard(service: service);
              },
            ),
    );
  }
}
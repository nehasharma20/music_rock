import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/music_service_view_model.dart';
import '../widgets/music_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<MusicServiceViewModel>(context, listen: false).fetchServices();
  }

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
              ),
              itemCount: viewModel.services.length,
              itemBuilder: (context, index) {
                final service = viewModel.services[index];
                return MusicCard(
                  service: service,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => DetailScreen(title: service.title),
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/widgets/custom_bottom_nav_bar.dart';
import '../../core/widgets/service_card.dart';
import '../../view_model/music_service_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<MusicServiceViewModel>(context);

    return Scaffold(
      backgroundColor: const Color(0xFF0F0F11),
      bottomNavigationBar: CustomBottomNavBar(currentIndex: 0, onTap: (_) {}),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: const [
                  Icon(Icons.search, color: Colors.white),
                  SizedBox(width: 10),
                  Expanded(child: Text("Search 'Punjabi Lyrics'", style: TextStyle(color: Colors.white70))),
                  Icon(Icons.mic, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Promo Banner
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFB80359), Color(0xFF720241)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Claim your", style: TextStyle(color: Colors.white70)),
                  const Text("Free Demo", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                  const Text("for custom Music Production", style: TextStyle(color: Colors.white70)),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    child: const Text("Book Now"),
                  )
                ],
              ),
            ),
            const SizedBox(height: 24),

            // Service Cards
            const Text("Hire hand-picked Pros for popular music services", style: TextStyle(color: Colors.white70)),
            const SizedBox(height: 16),
            ...vm.services.map((service) => ServiceCard(
              title: service.title,
              description: service.description,
              iconPath: service.iconPath,
              bgImage: service.bgImage, subtitle: '',
            )),
          ],
        ),
      ),
    );
  }
}

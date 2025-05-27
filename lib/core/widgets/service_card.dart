import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final String iconPath;
  final String bgImage;

  const ServiceCard({
    super.key,
    required this.title,
    required this.description,
    required this.iconPath,
    required this.bgImage, required String subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
          image: AssetImage(bgImage),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.darken),
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black54,
            ),
            child: Image.asset(iconPath, width: 24),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
                const SizedBox(height: 4),
                Text(description, style: const TextStyle(color: Colors.white70)),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view/screens/home_screen.dart';
import 'view_model/music_service_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MusicServiceViewModel()..fetchServices()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Rock',
      theme: ThemeData.dark(),
      home: const HomeScreen(),
    );
  }
}

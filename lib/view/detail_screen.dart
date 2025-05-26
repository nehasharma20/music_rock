import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String serviceTitle;

  const DetailScreen({required this.serviceTitle, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(serviceTitle)),
      body: Center(
        child: Text(
          "You tapped on: $serviceTitle",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

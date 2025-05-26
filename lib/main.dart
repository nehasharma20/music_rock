import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'core/di/service_locator.dart';
import 'view/home_screen.dart';
import 'view_model/service_view_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiceLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ServiceViewModel()..fetchServices(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Services',
        theme: ThemeData.dark(),
        home: HomeScreen(),
      ),
    );
  }
}

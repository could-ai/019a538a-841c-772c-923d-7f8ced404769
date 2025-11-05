import 'package:flutter/material.dart';
import 'screens/jewel_list_screen.dart';
import 'screens/jewel_detail_screen.dart';
import 'models/jewel.dart';

void main() {
  runApp(const JewelsApp());
}

class JewelsApp extends StatelessWidget {
  const JewelsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jewels Design App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const JewelListScreen(),
        '/detail': (context) => const JewelDetailScreen(),
      },
    );
  }
}
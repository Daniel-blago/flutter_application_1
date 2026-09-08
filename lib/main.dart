import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen.dart';
import 'providers/favorites_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DOTA 2 Heroes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC23C2A),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF1B1B1B),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
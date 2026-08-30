import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis favoritos'),
        backgroundColor: const Color(0xFFDAA520),
      ),
      body: const Center(
        child: Text('Aún no tienes héroes favoritos.'),
      ),
    );
  }
}

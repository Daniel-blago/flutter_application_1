import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'heroes_list_screen.dart';
import 'favorites_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOTA 2 Heroes'),
        backgroundColor: const Color(0xFFC23C2A),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo / imagen representativa
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color(0xFF2A2A2A),
                border: Border.all(color: const Color(0xFFDAA520), width: 3),
              ),
              child: const FaIcon(
                FontAwesomeIcons.shieldHalved,
                size: 90,
                color: Color(0xFFC23C2A),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'DOTA 2 Heroes',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Explora héroes y guarda tus favoritos',
              style: TextStyle(color: Colors.white70, fontSize: 15),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const FaIcon(FontAwesomeIcons.list),
                label: const Text('Ver héroes'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFC23C2A),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HeroesListScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 14),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                icon: const Icon(Icons.favorite),
                label: const Text('Mis favoritos'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDAA520),
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const FavoritesScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
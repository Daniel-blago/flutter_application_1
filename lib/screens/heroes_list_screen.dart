import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../data/heroes_data.dart';
import 'hero_detail_screen.dart';

class HeroesListScreen extends StatelessWidget {
  const HeroesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Héroes'),
        backgroundColor: const Color(0xFFC23C2A),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: heroesData.length,
        separatorBuilder: (_, __) => const Divider(color: Colors.white24),
        itemBuilder: (context, index) {
          final heroe = heroesData[index];
          return Card(
            color: const Color(0xFF2A2A2A),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: heroe.color,
                child: FaIcon(heroe.icono, color: Colors.white, size: 20),
              ),
              title: Text(
                heroe.nombre,
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                heroe.rol,
                style: const TextStyle(color: Colors.white70),
              ),
              trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white54, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => HeroDetailScreen(heroe: heroe)),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
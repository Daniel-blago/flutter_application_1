import 'package:flutter/material.dart';
import '../data/heroes_data.dart';
import '../widgets/hero_list_tile.dart';
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
          return HeroListTile(
            heroe: heroe,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HeroDetailScreen(heroe: heroe)),
              );
            },
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../data/heroes_data.dart';

class HeroesListScreen extends StatelessWidget {
  const HeroesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Héroes'),
        backgroundColor: const Color(0xFFC23C2A),
      ),
      body: ListView.builder(
        itemCount: heroesData.length,
        itemBuilder: (context, index) {
          final hero = heroesData[index];

          return ListTile(
            leading: FaIcon(hero.icono, color: hero.color, size: 28),
            title: Text(hero.nombre),
            subtitle: Text(hero.rol),
            trailing: const Icon(Icons.chevron_right),
          );
        },
      ),
    );
  }
}

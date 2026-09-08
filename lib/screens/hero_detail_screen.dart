import 'package:flutter/material.dart';
import '../models/hero_model.dart';
import '../widgets/favorite_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroDetailScreen extends StatelessWidget {
  final HeroModel heroe;
  const HeroDetailScreen({super.key, required this.heroe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(heroe.nombre),
        backgroundColor: const Color(0xFFC23C2A),
        actions: [
          FavoriteIconButton(heroId: heroe.id, heroNombre: heroe.nombre),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Hero(
  tag: 'hero-icon-${heroe.id}',
  child: Container(
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(color: heroe.color, shape: BoxShape.circle),
    child: FaIcon(heroe.icono, size: 70, color: Colors.white),
  ),
),
            const SizedBox(height: 20),
            Text(heroe.nombre,
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
            const SizedBox(height: 10),
            Text('Rol: ${heroe.rol}', style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 4),
            Text('Dificultad: ${heroe.dificultad}', style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 20),
            Expanded(
              child: Text(heroe.descripcion,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
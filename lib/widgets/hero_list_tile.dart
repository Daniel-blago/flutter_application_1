import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/hero_model.dart';

class HeroListTile extends StatelessWidget {
  final HeroModel heroe;
  final VoidCallback onTap;

  const HeroListTile({
    super.key,
    required this.heroe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF2A2A2A),
      child: ListTile(
        leading: Hero(
  tag: 'hero-icon-${heroe.id}',
  child: CircleAvatar(
    backgroundColor: heroe.color,
    child: FaIcon(heroe.icono, color: Colors.white),
  ),
),
        title: Text(
          heroe.nombre,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(heroe.rol, style: const TextStyle(color: Colors.white70)),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white54, size: 16),
        onTap: onTap,
      ),
    );
  }
}
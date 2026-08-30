import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../models/hero_model.dart';
import '../services/favorites_service.dart';

class HeroDetailScreen extends StatefulWidget {
  final HeroModel heroe;
  const HeroDetailScreen({super.key, required this.heroe});

  @override
  State<HeroDetailScreen> createState() => _HeroDetailScreenState();
}

class _HeroDetailScreenState extends State<HeroDetailScreen> {
  bool esFavorito = false;

  @override
  void initState() {
    super.initState();
    _cargarEstado();
  }

  Future<void> _cargarEstado() async {
    final favoritos = await FavoritesService.obtenerFavoritos();
    setState(() {
      esFavorito = favoritos.contains(widget.heroe.id);
    });
  }

  Future<void> _alternarFavorito() async {
    await FavoritesService.alternarFavorito(widget.heroe.id);
    setState(() {
      esFavorito = !esFavorito;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          esFavorito
              ? '${widget.heroe.nombre} agregado a favoritos'
              : '${widget.heroe.nombre} eliminado de favoritos',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final heroe = widget.heroe;
    return Scaffold(
      appBar: AppBar(
        title: Text(heroe.nombre),
        backgroundColor: const Color(0xFFC23C2A),
        actions: [
          IconButton(
            icon: Icon(esFavorito ? Icons.favorite : Icons.favorite_border),
            color: Colors.white,
            onPressed: _alternarFavorito,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: heroe.color,
                shape: BoxShape.circle,
              ),
              child: FaIcon(heroe.icono, size: 70, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Text(
              heroe.nombre,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 10),
            Text('Rol: ${heroe.rol}', style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 4),
            Text('Dificultad: ${heroe.dificultad}', style: const TextStyle(color: Colors.white70)),
            const SizedBox(height: 20),
            Expanded(
              child: Text(
                heroe.descripcion,
                style: const TextStyle(color: Colors.white, fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../data/heroes_data.dart';
import '../providers/favorites_provider.dart';
import 'hero_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  Future<void> _confirmarLimpiar(BuildContext context) async {
    final confirmar = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Vaciar favoritos'),
        content: const Text(
          '¿Seguro que quieres eliminar todos tus héroes favoritos?',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancelar'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Sí, vaciar'),
          ),
        ],
      ),
    );

    if (confirmar == true && context.mounted) {
      context.read<FavoritesProvider>().limpiarFavoritos();
    }
  }

  @override
  Widget build(BuildContext context) {
    final favoritosIds = context.watch<FavoritesProvider>().favoritosIds;
    final favoritos =
        heroesData.where((h) => favoritosIds.contains(h.id)).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mis Favoritos'),
        backgroundColor: const Color(0xFFC23C2A),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFDAA520),
        onPressed: () => _confirmarLimpiar(context),
        child: const Icon(Icons.delete, color: Colors.black),
      ),
      body: favoritos.isEmpty
          ? const Center(
              child: Text(
                'Aún no tienes favoritos',
                style: TextStyle(color: Colors.white70),
              ),
            )
          : GridView.builder(
              padding: const EdgeInsets.all(12),
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.85,
              ),
              itemCount: favoritos.length,
              itemBuilder: (context, index) {
                final heroe = favoritos[index];

                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HeroDetailScreen(heroe: heroe),
                    ),
                  ),
                  child: Card(
                    color: const Color(0xFF2A2A2A),
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Hero(
  tag: 'hero-icon-${heroe.id}',
  child: CircleAvatar(
    radius: 30,
    backgroundColor: heroe.color,
    child: FaIcon(
      heroe.icono,
      color: Colors.white,
    ),
  ),
),
                          const SizedBox(height: 10),
                          Text(
                            heroe.nombre,
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/favorites_provider.dart';

class FavoriteIconButton extends StatelessWidget {
  final String heroId;
  final String heroNombre;

  const FavoriteIconButton({
    super.key,
    required this.heroId,
    required this.heroNombre,
  });

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = context.watch<FavoritesProvider>();
    final esFavorito = favoritesProvider.esFavorito(heroId);

    return IconButton(
      icon: Icon(esFavorito ? Icons.favorite : Icons.favorite_border),
      color: Colors.white,
      onPressed: () {
        context.read<FavoritesProvider>().alternarFavorito(heroId);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              esFavorito
                  ? '$heroNombre eliminado de favoritos'
                  : '$heroNombre agregado a favoritos',
            ),
          ),
        );
      },
    );
  }
}
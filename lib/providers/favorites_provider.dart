import 'package:flutter/material.dart';
import '../services/favorites_service.dart';

class FavoritesProvider extends ChangeNotifier {
  List<String> _favoritosIds = [];

  List<String> get favoritosIds => _favoritosIds;

  FavoritesProvider() {
    _cargarFavoritos();
  }

  Future<void> _cargarFavoritos() async {
    _favoritosIds = await FavoritesService.obtenerFavoritos();
    notifyListeners();
  }

  bool esFavorito(String heroId) => _favoritosIds.contains(heroId);

  Future<void> alternarFavorito(String heroId) async {
    await FavoritesService.alternarFavorito(heroId);
    if (_favoritosIds.contains(heroId)) {
      _favoritosIds.remove(heroId);
    } else {
      _favoritosIds.add(heroId);
    }
    notifyListeners();
  }

  Future<void> limpiarFavoritos() async {
    await FavoritesService.limpiarFavoritos();
    _favoritosIds = [];
    notifyListeners();
  }
}
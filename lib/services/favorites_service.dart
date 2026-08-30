import 'package:shared_preferences/shared_preferences.dart';

class FavoritesService {
  static const String _key = 'favoritos';

  static Future<List<String>> obtenerFavoritos() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }

  static Future<void> alternarFavorito(String heroId) async {
    final prefs = await SharedPreferences.getInstance();
    final favoritos = prefs.getStringList(_key) ?? [];
    if (favoritos.contains(heroId)) {
      favoritos.remove(heroId);
    } else {
      favoritos.add(heroId);
    }
    await prefs.setStringList(_key, favoritos);
  }

  static Future<void> limpiarFavoritos() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_key, []);
  }
}
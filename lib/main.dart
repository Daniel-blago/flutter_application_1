import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Videojuego Favorito',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFC23C2A),
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: const Color(0xFF1B1B1B),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de héroes favoritos de DOTA 2
  final List<Map<String, dynamic>> heroes =  [
    {
      'nombre': 'Pudge',
      'rol': 'Support / Ganker',
      'dificultad': 'Media',
      'icono': FontAwesomeIcons.skull,
      'color': Color(0xFF6B8E23),
    },
    {
      'nombre': 'Invoker',
      'rol': 'Carry / Mid',
      'dificultad': 'Muy alta',
      'icono': FontAwesomeIcons.hatWizard,
      'color': Color(0xFF4169E1),
    },
    {
      'nombre': 'Juggernaut',
      'rol': 'Carry',
      'dificultad': 'Baja',
      'icono': FontAwesomeIcons.gavel,
      'color': Color(0xFFDAA520),
    },
    {
      'nombre': 'Anti-Mage',
      'rol': 'Carry',
      'dificultad': 'Media',
      'icono': FontAwesomeIcons.boltLightning,
      'color': Color(0xFF9370DB),
    },
  ];

  int currentIndex = 0;

  void cambiarHeroe() {
    setState(() {
      currentIndex = (currentIndex + 1) % heroes.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    final heroeActual = heroes[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Videojuego Favorito: DOTA 2'),
        backgroundColor: const Color(0xFFC23C2A),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const FaIcon(
              FontAwesomeIcons.shieldHalved,
              size: 80,
              color: Color(0xFFC23C2A),
            ),
            const SizedBox(height: 12),
            const Text(
              'DOTA 2',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Elige tu héroe favorito y descubre su rol',
              style: TextStyle(fontSize: 16, color: Colors.white70),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Card(
              color: const Color(0xFF2A2A2A),
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    FaIcon(
                      heroeActual['icono'],
                      size: 60,
                      color: heroeActual['color'],
                    ),
                    const SizedBox(height: 12),
                    Text(
                      heroeActual['nombre'],
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(FontAwesomeIcons.userNinja,
                            size: 16, color: Colors.white70),
                        const SizedBox(width: 6),
                        Text(
                          'Rol: ${heroeActual['rol']}',
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const FaIcon(FontAwesomeIcons.chartLine,
                            size: 16, color: Colors.white70),
                        const SizedBox(width: 6),
                        Text(
                          'Dificultad: ${heroeActual['dificultad']}',
                          style: const TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: cambiarHeroe,
              icon: const FaIcon(FontAwesomeIcons.dice),
              label: const Text('Cambiar héroe'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFC23C2A),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 24, vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
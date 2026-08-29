import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../models/hero_model.dart';

final List<HeroModel> heroesData = [
  HeroModel(
    id: 'pudge',
    nombre: 'Pudge',
    rol: 'Support / Ganker',
    dificultad: 'Media',
    descripcion: 'Carnicero temido por su gancho de carne, capaz de atrapar enemigos desde larga distancia.',
    icono: FontAwesomeIcons.skull,
    color: const Color(0xFF6B8E23),
  ),
  HeroModel(
    id: 'invoker',
    nombre: 'Invoker',
    rol: 'Carry / Mid',
    dificultad: 'Muy alta',
    descripcion: 'Mago capaz de invocar 10 hechizos distintos combinando tres orbes elementales.',
    icono: FontAwesomeIcons.hatWizard,
    color: const Color(0xFF4169E1),
  ),
  HeroModel(
    id: 'juggernaut',
    nombre: 'Juggernaut',
    rol: 'Carry',
    dificultad: 'Baja',
    descripcion: 'Guerrero samurái con un remolino de espadas devastador en el late game.',
    icono: FontAwesomeIcons.gavel,
    color: const Color(0xFFDAA520),
  ),
  HeroModel(
    id: 'antimage',
    nombre: 'Anti-Mage',
    rol: 'Carry',
    dificultad: 'Media',
    descripcion: 'Especialista en quemar mana enemiga y escapar con su parpadeo (blink).',
    icono: FontAwesomeIcons.boltLightning,
    color: const Color(0xFF9370DB),
  ),
];
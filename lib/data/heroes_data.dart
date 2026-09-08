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

  HeroModel(
    id: 'crystal_maiden',
    nombre: 'Crystal Maiden',
    rol: 'Support',
    dificultad: 'Baja',
    descripcion: 'Maga de hielo que ralentiza y congela enemigos, aportando control de área desde el inicio del juego.',
    icono: FontAwesomeIcons.snowflake,
    color: const Color(0xFF00BFFF),
  ),
  HeroModel(
    id: 'lina',
    nombre: 'Lina',
    rol: 'Carry / Mid',
    dificultad: 'Media',
    descripcion: 'Hechicera de fuego con gran daño explosivo a distancia, capaz de eliminar objetivos rápidamente.',
    icono: FontAwesomeIcons.fire,
    color: const Color(0xFFFF4500),
  ),
  HeroModel(
    id: 'axe',
    nombre: 'Axe',
    rol: 'Initiator / Tank',
    dificultad: 'Baja',
    descripcion: 'Guerrero brutal que se lanza al combate provocando a los enemigos y aguantando gran cantidad de daño.',
    icono: FontAwesomeIcons.one,
    color: const Color(0xFF8B0000),
  ),
  HeroModel(
    id: 'shadow_fiend',
    nombre: 'Shadow Fiend',
    rol: 'Carry / Mid',
    dificultad: 'Alta',
    descripcion: 'Demonio de las sombras que acumula almas de sus víctimas para aumentar el poder de sus hechizos.',
    icono: FontAwesomeIcons.ghost,
    color: const Color(0xFF4B0082),
  ),
];
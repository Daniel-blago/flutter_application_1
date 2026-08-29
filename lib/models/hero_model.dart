import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeroModel {
  final String id;
  final String nombre;
  final String rol;
  final String dificultad;
  final String descripcion;
  final FaIconData icono;
  final Color color;

  const HeroModel({
    required this.id,
    required this.nombre,
    required this.rol,
    required this.dificultad,
    required this.descripcion,
    required this.icono,
    required this.color,
  });
}
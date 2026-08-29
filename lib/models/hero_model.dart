import 'package:flutter/material.dart';

class HeroModel {
  final String id;
  final String nombre;
  final String rol;
  final String dificultad;
  final String descripcion;
  final IconData icono;
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
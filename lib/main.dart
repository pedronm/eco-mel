import 'package:ecomel/home.dart';
import 'package:ecomel/themes/tema_eco_mel.dart';
import 'package:flutter/material.dart';
import 'package:ecomel/home.dart';

void main() {
  runApp(EcoMel());
}

class EcoMel extends StatelessWidget{
  const EcoMel({super.key});

  @override
  Widget build(BuildContext context){
    final ThemeData tema = TemaEcoMel.light();
    return MaterialApp(
      theme: tema,
      title: 'EcoMel',
      home: Home(),
    );
  }
}
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/novidade.dart';
import '../models/principal_data.dart';

class MockPrincipalService {
  /*FutureBuilder<PrincipalData> getPrincipalData() async {
    final novidades = await _getNovidadesHoje();
    final destaque = await _getDestaqueHoje();

    return PrincipalData(novidades: novidades, destaque: destaque);
  }

  Future<List<Novidade>> _getNovidadesHoje() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/dados_mockados/novidades_mockadas.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

  }*/

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}

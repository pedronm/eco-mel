import 'package:ecomel/screens/carteira_screen.dart';
import 'package:ecomel/screens/dados_pessoais.dart';
import 'package:ecomel/screens/graficos_screen.dart';
import 'package:ecomel/screens/principal_screen.dart';
import 'package:ecomel/screens/transferir_screen.dart';
import 'package:ecomel/screens/vender_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecomel/screens/comprar_screen.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> paginas = <Widget>[
    PrincipalScreen(),
    CarteiraScreen(),
    GraficoScreen(),
    DadosPessoaisScreen()
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text(
          'Eco Mel',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ), */
      body: paginas[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.wallet), label: 'Carteira'),
          BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq), label: 'Gráficos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
        ],
      ),
    );
  }
}

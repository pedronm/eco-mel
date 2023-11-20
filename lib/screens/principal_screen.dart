import 'package:ecomel/components/components.dart';
import 'package:flutter/material.dart';

class PrincipalScreen extends StatefulWidget {
  const PrincipalScreen({Key? key}) : super(key: key);

  @override
  State<PrincipalScreen> createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image(
                image: AssetImage('assets/mock_image/presentation_clean.png')),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 90,
                width: 320,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(250, 250, 250, 100),
                    border: Border.all(width: 1),
                    backgroundBlendMode: BlendMode.clear,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mauro Albuquerque"),
                        SizedBox(height: 12),
                        Text("Saldo: 13.000,43")
                      ],
                    ),
                    Icon(Icons.person),
                    Icon(Icons.logout)
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 180,
            padding: EdgeInsets.all(14),
            width: double.infinity,
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black)),
                color: Color.fromRGBO(250, 250, 250, 100)),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bem vindo a sua nova moeda digital!",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                            'Esse é o Eco mel a verdadeira maneira de fazer o seu dinheiro render! '),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Saiba mais",
                          style: TextStyle(
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.italic),
                        )
                      ],
                    )
                  ],
                ),
                Row()
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 180,
            padding: EdgeInsets.all(15),
            width: double.infinity,
            decoration: const BoxDecoration(
                border: Border(
                    top: BorderSide(width: 1, color: Colors.black),
                    bottom: BorderSide(width: 1, color: Colors.black)),
                color: Color.fromRGBO(250, 250, 250, 100)),
            child: Row(
              children: [
                SizedBox(
                  height: 120,
                  width: 100,
                ),
                Flexible(
                    child: Column(
                  children: [
                    Text(
                      "Ultimas transações registradas,"
                      "arraste pra baixo pra ver mais:",
                      textAlign: TextAlign.left,
                    ),
                  ],
                ))
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}

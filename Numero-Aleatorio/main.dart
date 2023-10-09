import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.blue),
      home: TelaInicial(),
    );
  }
}

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jogo do número aleatório"),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  void _descobrir() {
    setState(() {
      resultado = Random().nextInt(11);
    });
  }

  Widget _body() {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _foto(),
          SizedBox(height: 5),
          _campo(),
          SizedBox(height: 50),
          _button(),
          SizedBox(height: 30),
          _resultado(),
        ],
      ),
    );
  }

  Widget _foto() {
    return Center(
      child: Image.network(
        'https://cinepop.com.br/wp-content/uploads/2019/05/Jim-Carrey-as-The-Riddler-in-Batman-Forever-1280x640.jpg',
        height: 280,
        width: 280,
      ),
    );
  }

  Widget _campo() {
    return Text(
      "Pense em um número \nde 0 a 10",
      style: TextStyle(color: Colors.green, fontSize: 28),
    );
  }

  Widget _resultado() {
    return Text(
      resultado.toString(),
      style: TextStyle(color: Colors.green, fontSize: 25),
    );
  }

  Widget _button() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      ),
      onPressed: _descobrir,
      child: Text(
        "Descobrir",
        style: TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
    );
  }
}

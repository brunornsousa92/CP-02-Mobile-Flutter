import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imagens = [
    'jogo1.png',
    'jogo2.jpg',
    'jogo3.jpg',
    'jogo4.jpg',
    'jogo5.jpg',
  ];

  final List<String> textos = [
    'The Witcher 3 - Wild Hunt\nR\$ 63,00',
    'Valorant\nFree To Play',
    'Baldur\'s Gate 3\nR\$ 199,99',
    'Marvel SNAP\nFree To Play',
    'Red Dead Redemption 2\nR\$ 125,61',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Anúncios"),
      centerTitle: true,
      backgroundColor: Color(0xffb22727),
    );
  }

  _corpo() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        left: 5,
        right: 5,
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _carrosel(),
          ],
        ),
      ),
    );
  }

  _carrosel() {
    return Container(
      margin: EdgeInsets.only(bottom: 80),
      height: 500,
      child: PageView.builder(
        itemCount: imagens.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(height: 30), // Espaçamento entre a imagem e o AppBar
              _foto(imagens[index]),
              _texto(textos[index]),
            ],
          );
        },
      ),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 260,
      width: 260,
      fit: BoxFit.contain,
    );
  }

  _texto(String texto) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),
        child: Text(
          texto,
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

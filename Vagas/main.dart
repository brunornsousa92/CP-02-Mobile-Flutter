import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Vaga {
  final String nome;
  final double salario;
  final String descricao;
  final String contato;

  Vaga(this.nome, this.salario, this.descricao, this.contato);
}

class MyApp extends StatelessWidget {
  final List<Vaga> vagas = [
    Vaga(
        "Desenvolvedor Front-end Júnior",
        2500,
        "Estamos em busca de um Desenvolvedor Front-end Júnior para se juntar à nossa equipe e aprender a criar interfaces incríveis para nossos projetos.",
        "contato@email.com.br"),
    Vaga(
        "Desenvolvedor Back-end Júnior",
        2600,
        "Procuramos um Desenvolvedor Back-end Júnior para se juntar à nossa equipe e colaborar no desenvolvimento dos sistemas e servidores da empresa.",
        "contato@email.com.br"),
    Vaga(
        "Analista de Redes",
        3500,
        "Estamos à procura de um Analista de Redes para garantir a estabilidade e segurança da nossa infraestrutura de rede e manter nossos sistemas online.",
        "contato@email.com.br"),
    Vaga(
        "Desenvolvedor Flutter Pleno",
        4500,
        "Estamos à procura de um Desenvolvedor Flutter Pleno para liderar projetos de desenvolvimento de aplicativos móveis e contribuir para nossa equipe de tecnologia.",
        "contato@email.com.br"),
    Vaga(
        "Analista de Marketing Digital",
        4000,
        "Estamos à procura de um Analista de Marketing Digital para fortalecer nossa presença online e criar estratégias inovadoras para nossos produtos.",
        "contato@email.com.br"),
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
      title: Text("Vagas"),
      centerTitle: true,
      backgroundColor: Color(0xff0e98d7),
    );
  }

  _corpo() {
    return Container(
      child: ListView.builder(
        itemCount: vagas.length,
        itemBuilder: (context, index) {
          return _vagaCard(vagas[index]);
        },
      ),
    );
  }

  _vagaCard(Vaga vaga) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              vaga.nome,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Salário: R\$${vaga.salario.toStringAsFixed(2)}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Descrição: ${vaga.descricao}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Contato: ${vaga.contato}",
              style: TextStyle(
                fontSize: 16, // Aumentar o tamanho da fonte
              ),
            ),
          ],
        ),
      ),
    );
  }
}

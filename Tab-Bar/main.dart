import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarApp(),
    );
  }
}

class TabBarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            "Tab Bar",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Pessoal",
                icon: Icon(Icons.person, color: Colors.white),
              ),
              Tab(
                text: "Formação",
                icon: Icon(Icons.school, color: Colors.white),
              ),
              Tab(
                text: "Experiência",
                icon: Icon(Icons.work, color: Colors.white),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PersonalTab(),
            EducationTab(),
            ExperienceTab(),
          ],
        ),
      ),
    );
  }
}

class PersonalTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          " Nome: Bruno \n Data de Nascimento: 30/07/1992 \n Estado Civil: Solteiro \n Dependentes: 0",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class EducationTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Cursando Análise de Sistemas para Internet na Faculdade de Informática e Administração Paulista (FIAP) - 2022/2023",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class ExperienceTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Analista de T.I. / ABRAFOTON \nResponsável de T.I. (software e hardware) da Associação; Gestor de cadastro do site da ABRAFOTON; Responsável geral por contas à pagar e à receber.",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

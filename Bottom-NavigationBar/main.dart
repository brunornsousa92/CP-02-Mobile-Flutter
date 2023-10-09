import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    PessoalScreen(),
    ExperienciaScreen(),
    FormacaoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pessoal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Experiência',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formação',
          ),
        ],
      ),
    );
  }
}

class PessoalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        ' Nome: Bruno Sousa \n Data de Nascimento: 30/07/1992 \n Estado Civil: Solteiro \n Dependentes: 0',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class ExperienciaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Analista de T.I. / ABRAFOTON \nResponsável de T.I. (software e hardware) da Associação; Gestor de cadastro do site da ABRAFOTON; Responsável geral por contas à pagar e à receber.',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class FormacaoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Cursando Analise de Sistemas para Internet na Faculdade de Informática e Administração Paulista (FIAP) - 2022/2023',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

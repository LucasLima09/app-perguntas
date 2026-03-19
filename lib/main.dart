import 'package:flutter/material.dart';
import './questionario.dart';
import './resultado.dart';

main() {
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Qual é sua cor favorita',
      'respostas': [
        {'texto':'Azul', 'pontuacao': 1},
        {'texto':'Vermelho', 'pontuacao': 8},
        {'texto':'Amarelo', 'pontuacao': 4},
        {'texto':'Preto', 'pontuacao': 6},
        ],
    },
    {
      'texto': 'Qual é seu animal favorito',
      'respostas': [
        {'texto':'Lebre','pontuacao': 4},
        {'texto':'Onça','pontuacao': 8},
        {'texto':'Jiboia','pontuacao': 10},
        {'texto':'Leão','pontuacao': 6},
        ],
    },
    {
      'texto': 'O que você prefere',
      'respostas': [
        {'texto':'Massa','pontuacao': 2},
        {'texto':'Sushi','pontuacao': 7},
        {'texto':'Pizza','pontuacao': 5},
        {'texto':'Hamburguer','pontuacao': 8}
        ],
    },
  ];

  void _responder(int pontuacao) {
    if (temPerguntaSelecionada) {
      setState(() {
        _pontuacaoTotal += pontuacao;
        _perguntaSelecionada++;
      });
    }
  }

  void _reiniciarQuestionario(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Perguntas")),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                responder: _responder,
              )
            : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}

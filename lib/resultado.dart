import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;
  final Function() quandoReiniciarQuestionario;


  String get fraseResultado{
    if(pontuacao < 8){
      return 'Parabéns';
    }
    else if(pontuacao < 13){
      return 'Na média';
    }else{
      return 'Excelente';
    }
  }

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Center(
          child: Text(fraseResultado,
          style: TextStyle(fontSize: 30),)
        ),
        TextButton(
        onPressed: quandoReiniciarQuestionario,
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue
        ),
        child: Text(
          "Reiniciar?",
          style: TextStyle(
          fontSize: 18),
        ),
        )
      ],
    );
  }
}
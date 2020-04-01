import 'package:flutter/material.dart';
import 'dart:math';

void main(){
   runApp(MaterialApp(
     home: Home(),
     debugShowCheckedModeBanner: false,
   ));  
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
     "Se você não se sente a altura,suba até ela",
     "Eu nunca volto atrás na minha palavra... Esse é o meu jeito!",
     "O sol já se foi, agora só nos resta as memórias daquela luz.",
     "Se você não tem razão para estar vivo, é o mesmo que estar morto",
     "Não importa o quão grande seja a dor, eu continuarei seguindo em frente.",
     "Se pensarmos em uma pessoa, de qualquer modo, chegaremos a ela.",
     "Os corajosos são aqueles que mesmo temendo de medo lutam por um bem maior.",
     "Se isso for ser esperto...Prefiro passar minha vida inteira como um Tolo!"
  ];

  var _frasesGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrases(){

    // 0, 1, 2, 3, 4, 5
    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _frasesGerada = _frases[numeroSorteado];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Frases do dia"),
         backgroundColor: Colors.green,
      ),
      body: Center(
         child: Container(
           padding: EdgeInsets.all(16),
           //width: double.infinity,
           /*decoration: BoxDecoration(
             border: Border.all(width: 3,color: Colors.amber),
           ),*/
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               Image.asset("images/logo.png"),
               Text(
                 _frasesGerada,
                 textAlign: TextAlign.justify,
                 style: TextStyle(
                     fontSize: 25,
                     fontStyle: FontStyle.italic,
                     color: Colors.black
                 ),
               ),
               RaisedButton(
                 child: Text(
                   "Nova Frase",
                   style: TextStyle(
                       fontSize: 25,
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                   ),
                 ),
                 color: Colors.green,
                 onPressed: _gerarFrases,
               )

             ],
           ),
         ),
      ),
    );
  }
}

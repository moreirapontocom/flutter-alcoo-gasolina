import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "Saiba qual é a melhor opção para abastecer seu carro",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço do Álcool, ex: 1.59"
                ),
                controller: _controllerAlcool,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço da Gasolina, ex: 1.59"
                ),
                controller: _controllerGasolina,
              ),
              RaisedButton(
                color: Colors.blue,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Calcular",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                onPressed: () {
                  print("Clicou no botão");
                  print("Preço álcool: " + _controllerAlcool.text);
                  print("Preço gasolina: " + _controllerGasolina.text);
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Melhor abastecer com",
                      style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                    ),
                    Text(
                      "TIPO",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
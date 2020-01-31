import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "IMC", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  
  String _infotext = "Informe seus dados";

  void _textReset(){
    pesoController.text = "";
    alturaController.text = "";
    setState((){
      _infotext = "Informe seus dados";
    });
    
    
    
  }
  
  void _calculate(){
    setState((){
      double peso = double.parse(pesoController.text);
    double altura = double.parse(alturaController.text)/100;
    double imc = peso / (altura * altura);
         
    if(imc < 18.6){
      _infotext = "Abaixo do Peso(${imc.toStringAsPrecision(2)})";
    }else if(imc >= 18.6 && imc < 24.9){
      _infotext = "Peso Ideal(${imc.toStringAsPrecision(2)})";
    }else if(imc >= 24.9 && imc < 29.9){
      _infotext = "Levemente Acima do Peso(${imc.toStringAsPrecision(2)})";
    }else if(imc >= 29.9 && imc < 34.9){
      _infotext = "Obesidade Grau I(${imc.toStringAsPrecision(2)})";
    }else if(imc >= 34.9 && imc < 39.9){
      _infotext = "Obesidade Grau II(${imc.toStringAsPrecision(2)})";
    }else if(imc >= 40){
      _infotext = "Obesidade Grau III(${imc.toStringAsPrecision(2)})";
    }
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IMC"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _textReset,
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Icon(
              Icons.person_outline,
              color: Colors.green,
              size: 150,
            ),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: pesoController,
              decoration: InputDecoration(
                labelText: "Peso(Kg)",
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              controller: alturaController,
              decoration: InputDecoration(
                labelText: "Altura(Cm)",
              ),
              
            ),
            Container(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              height: 100.0,
              child: RaisedButton(
                onPressed: _calculate,
                child: Text(
                  "Calcular",
                  style: TextStyle(fontSize: 20.0),
                ),
                color: Colors.green,
                textColor: Colors.white,
              ),
            ),
            Text(
              _infotext,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green, fontSize: 15.0),
            )
          ],
        ),
      ),
    );
  }
}


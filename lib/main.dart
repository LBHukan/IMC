import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "IMC", home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            onPressed: () {},
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
                decoration: InputDecoration(
                  labelText: "Peso(Kg)",
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Altura(Cm)",
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 10.0, bottom: 10.0),
                height: 100.0,
                child: RaisedButton(
                  onPressed: () {},
                  child: Text("Calcular", 
                              style: TextStyle(fontSize: 20.0),),
                  color: Colors.green,
                  textColor: Colors.white,
                  
                ),
              )
            ]),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'dart:math';

class Page2 extends StatefulWidget {
  Page2({Key key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int rndm = generateRandom();
  void displayRandom() {
    setState(() {
      rndm = generateRandom();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Página 2"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [Colors.blue[300], Colors.blue[100]],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
          ),
        ),
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                child: Text(
                  "Genere número random",
                  style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text(
                  "$rndm",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  displayRandom();
                },
                color: Colors.white,
                child: Text("Generar"),
              ),
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.of(context).pop(rndm.toString());
                },
                color: Colors.white,
                child: Text("Guardar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

int generateRandom() {
  return new Random().nextInt(1000);
}

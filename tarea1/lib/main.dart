import 'package:flutter/material.dart';
import 'package:tarea1/page2.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tarea1/page3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  Page1({Key key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String p2_1 = "";
  String p2_2 = "";
  String p3 = "";

   showAlertDialog(BuildContext ctx) {
    showDialog(
        context: ctx,
        builder: (context) {
          TextEditingController _textController = TextEditingController();

          return AlertDialog(
            title: Text("Ingrese datos"),
            content: TextField(
              controller: _textController,
              maxLength: 10,
              decoration: InputDecoration(
                labelText: "Ingrese palabra",
                hintText: "Palabra",
              ),
            ),
            actions: <Widget>[
              RaisedButton(
                child: Text("Cancelar"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              RaisedButton(
                child: Text("Aceptar"),
                onPressed: () async {
                  p2_1 = _textController.text;
                  Navigator.of(context).pop();
                  navigateP2(ctx);
                },
              ),
            ],
          );
        });
  }

  navigateP2(BuildContext context) async {
    p2_2 = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return Page2();
      }),
    );
  }

  navigateP3(BuildContext context) async {
    p3 = await Navigator.of(context).push(
      MaterialPageRoute(builder: (context) {
        return Page3();
      }),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarea 1'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(12),
            child: Center(
              child: Text(
                "BIENVENIDOS",
                style: TextStyle(
                  fontSize: 36,
                  fontFamily: "Pacifico",
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Image.asset('assets/dart.png'),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
                    child: Text(
                      "Seleccione la acción a realizar:",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "SourceSansPro",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Página 2",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  showAlertDialog(context);
                },
              ),
              MaterialButton(
                color: Colors.blue,
                child: Text(
                  "Página 3",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  navigateP3(context);
                },
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Pg.2 => $p2_1$p2_2",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "Pg.3 => $p3",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

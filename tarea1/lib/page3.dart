import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String face1 = "(✿◠‿◠)";
    final String face2 = "(•◡•) /";
    final String face3 = "ʕ•́ᴥ•̀ʔっ";
    return Scaffold(
      appBar: AppBar(
        title: Text("Página 3"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                color: Colors.white60,
                child: Text("$face1"),
                onPressed: () {
                  Navigator.of(context).pop(face1);
                },
              ),
              MaterialButton(
                color: Colors.black,
                child: Text("$face2", style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.of(context).pop(face2);
                },
              ),
              MaterialButton(
                color: Colors.white60,
                child: Text("$face3"),
                onPressed: () {
                  Navigator.of(context).pop(face3);
                },
              ),
            ],
      ),
    );
  }
}
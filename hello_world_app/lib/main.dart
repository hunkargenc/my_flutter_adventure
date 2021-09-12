import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.deepPurple,
            accentColor: Colors.deepPurpleAccent),
        home: Scaffold(
          //backgroundColor: Colors.yellow,
          appBar: AppBar(
            title: Text(
              "Flutter Demo",
              //style: TextStyle(color: Colors.white, fontSize: 24),
            ),
            //backgroundColor: Colors.deepPurple,
          ),
          body: Center(
            //child: Container(
            // alignment: Alignment.topCenter,
            //width: 200,
            //height: 200,
            //color: Colors.deepPurple,
            //alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(20),
              child: FlutterLogo(
                size: 120,
              ),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                  border: Border.all(width: 4, color: Colors.black)),
              //color: Colors.white,
              //margin: EdgeInsets.all(1),
              //width: 50,
              //height: 50,
              //"Hünkar Genç Yıldız",
              //textAlign: TextAlign.center,
              //),
              //margin: EdgeInsets.all(10),
              //constraints: BoxConstraints(
              //maxHeight: 200, minHeight: 100, maxWidth: 200, minWidth: 100),
              //),
            ),
            //Text("Flutter Demo"),
            //floatingActionButton: FloatingActionButton(
            //onPressed: () {},
            //child: Icon(Icons.add),
            //backgroundColor: Colors.deepPurple),
          ),
        ));
  }
}

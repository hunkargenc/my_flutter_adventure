import 'package:flutter/material.dart';
import 'package:my_project/screens/getting_started_screen.dart';

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
          appBar: AppBar(
            title: Text(
              "Flutter Demo",
            ),
            actions: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
              ),
              // IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.search),
              // ),
              PopupMenuButton(
                  icon: Icon(Icons.public),
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Text("EN"),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Text("TR"),
                          value: 2,
                        )
                      ]),
            ],
          ),
          body: GettingStartedScreen(),
        ));
  }
}

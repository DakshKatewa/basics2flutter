import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // talking about BuildContext tells the flutter framework that HomePage is present here in the widget tree
    return Scaffold(
        appBar: AppBar(
          title: const Text("Padding and Margin"),
          backgroundColor: const Color.fromARGB(96, 175, 99, 99),
        ),
        body:
            //  const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text("Will apply padding here "),
            // ),
            Container(
          color: Colors.blueGrey,
          margin: const EdgeInsets.all(20),
          child: const Padding(
            // container ke andr space dene ke liye padding widget use krr rhe hain
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Giving Margin here ",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}

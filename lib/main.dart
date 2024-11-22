import 'package:basics_to_flutter/home_page.dart';
import 'package:flutter/material.dart';
// this line means we are importing material.dart FILE from flutter package

void main() {
  // Entry point of any flutter project

  runApp(const MyApp());
  // This runApp() function is provided by this 'package:flutter/material.dart'
}

// Constructing a Widget
class MyApp extends StatelessWidget {
  // Myapp extends StatelessWidget which means inherited by stateless widget
  const MyApp(
      {super.key}); // A constructor of MyApp class ,Just like we create in case of Node
  // Also the key here is just like any other general key i.e. helps diffrentite between widgets
  /*
     Inside this constructor we write MANDATORY PARAMETERS for our widget 
     This is done using 'required' keyword in dart
     For ex.) required this.title ----- this keyword signifies that object of this widget class will always require this parameter
     All this things are written within the { } curly braces
   */

  // we override BECAUSE stateless widget is an Abstract class AND we always override an abstract class
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // In an App one should only have one material app written
      home: HomePage(),
    ); //MaterialApp() for Material Designs and CupertinoApp() for Cupertino Designs
  }
}

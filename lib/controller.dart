import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({super.key});

  @override
  State<Controller> createState() => _ControllerState(); 
  /*
    _controllerState is the state class, Controller class is the widget class
   */
}

class _ControllerState extends State<Controller> {
  // ignore: unused_field
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

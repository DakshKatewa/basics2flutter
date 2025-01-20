import 'package:flutter/material.dart';

class Listtile extends StatelessWidget {
  const Listtile({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listtiles"),
      ),
      body: 
        ListView(
          scrollDirection: Axis.vertical,
              children:const [
                ListTile(
                  leading: Icon(Icons.add),
                  title: Text("Abc"),
                  subtitle: Text("efgh"),
                ),
              ],
        )
      );
    
  }
}

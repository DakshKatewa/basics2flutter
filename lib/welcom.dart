import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  /// going to use listview and listview.builder in this class

  @override
  Widget build(BuildContext context) {
    var arrNames = ["Ram", "Shayam", "Rahul", "Ravi"];

    return Scaffold(
      appBar: AppBar(
        title: const Text(" Welcome to the app --> ListView"),
        backgroundColor: const Color.fromARGB(255, 204, 120, 120),
      ),
      body: Column(
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 150,

            // creating ListView here

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "One",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Two",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Three",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    "Four",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
          ),

          // Creating ListView.builder here

          // ignore: sized_box_for_whitespace
          Container(
            height: 150,
            child: ListView.builder(
              // we created the listView builder
              scrollDirection: Axis.horizontal,
              itemCount: arrNames.length,
              itemExtent: 100, // give each item some free space
              itemBuilder: (context, index) {
                return Text(arrNames[index]);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            title: Text("Animal"),
            subtitle: Text("Elephant"),
            tileColor: Color.fromARGB(255, 108, 121, 198),
          ),
          // usually have these  parts trialing leading title and subtitle, onTap functionality

          const SizedBox(
            height: 10,
          ),

          // Creating ListView.seprated here

          // ignore: sized_box_for_whitespace
          Container(
            height: 100,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return Text(arrNames[index]);
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 2,
                    thickness: 3,
                  );
                },
                itemCount: arrNames.length),
          )
        ],
      ),
    );
  }
}

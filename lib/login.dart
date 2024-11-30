//import 'package:basics_to_flutter/cores/app_colors.dart';
import 'package:basics_to_flutter/welcom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

// provinding it the dispose
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  // create user using firebaseAuth
  Future<void> createUserWithEmailPassword() async {
    final userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
            email: emailController.text.trim(),
            password: passwordController.text.trim());
    print(userCredential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        // now since it's a column it will start from the top
        //to start it with center we will do it's mainAxisAligment as Center
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 300,
            child: TextField(
              controller: emailController,
              obscureText: false,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
                hintText: "Enter your email",
              ),
            ),
          ),
          // ignore: sized_box_for_whitespace
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: 300,
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Password",
                hintText: "Enter your Password",
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          ElevatedButton(
            onPressed: () async {
              await createUserWithEmailPassword();
            },
            child: const Text("signUP"),
          )
        ],
      ),
    ));
  }
}

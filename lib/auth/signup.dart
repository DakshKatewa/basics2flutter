import 'package:basics_to_flutter/auth/signup.dart';
import 'package:basics_to_flutter/auth/signin.dart';
import 'package:basics_to_flutter/welcom.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
    try {
      final userSignUpCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
              // this is a predefined function
              email: emailController.text.trim(),
              password: passwordController.text.trim());
      if (userSignUpCredential.user != null) {
        Navigator.pushNamed(
            // ignore: use_build_context_synchronously
            context,
            '/welcome');
      }
    } on FirebaseAuthException catch (e) {
      // ignore: avoid_print
      print(e.message);
    }
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
            child: const Text("signUp"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: const Text("Already a user "),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SignIn()),
                    );
                  },
                  child: const Text(
                    "SignIn",
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}

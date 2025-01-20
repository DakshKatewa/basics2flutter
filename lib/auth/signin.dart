import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // controllers
  final TextEditingController _loginEmailController = TextEditingController();
  final TextEditingController _loginPasswordController =  TextEditingController();

  // disposing these controllers
  @override
  void dispose() {
    _loginEmailController.dispose();
    _loginPasswordController.dispose();
    super.dispose();
  }

  // signing up user
  Future<void> loginUserWithEmailPassword() async {
    try {
      final userLoginCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: _loginEmailController.text.trim(),
              password: _loginPasswordController.text.trim());

      // check for user , if already present then enter him in the app
      if (userLoginCredential.user != null) {
        // ignore: use_build_context_synchronously
        Navigator.pushNamed(context, '/welcome');
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextField(
                obscureText: false,
                controller: _loginEmailController,
                decoration: const InputDecoration(
                  hintText: "Enter email",
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: 300,
              child: TextField(
                obscureText: true,
                controller: _loginPasswordController,
                decoration: const InputDecoration(
                  hintText: "enter your password",
                  labelText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await loginUserWithEmailPassword();
              },
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Color.fromARGB(255, 78, 128, 204)),
                  shadowColor: WidgetStatePropertyAll(
                      Color.fromARGB(255, 238, 238, 238))),
              child: const Text(
                "Login",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

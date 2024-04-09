import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'password',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Auth().signInWithEmailAndPassword(emailController.text, passwordController.text);
                },
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Auth().signUpWithEmailAndPassword(emailController.text, passwordController.text);
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

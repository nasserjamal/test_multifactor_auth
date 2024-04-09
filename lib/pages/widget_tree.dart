import 'package:flutter/material.dart';
import 'package:test_multifactor_auth/auth.dart';
import 'package:test_multifactor_auth/pages/home.dart';
import 'package:test_multifactor_auth/pages/login.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasData) {
            return const Home();
          } else {
            return Login();
          }
        });
  }
}

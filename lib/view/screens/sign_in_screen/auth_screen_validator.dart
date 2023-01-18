import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sunat_app/view/screens/screens.dart';

class AuthScreenValidator extends StatelessWidget {
  const AuthScreenValidator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // If user is logged
          if (snapshot.hasData) {
            return const HomeScreen();
          }

          // If user isn't logged
          else {
            return const SignInScreen();
          }
        },
      ),
    );
  }
}

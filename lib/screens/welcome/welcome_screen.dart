import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Bem-vindo!',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}

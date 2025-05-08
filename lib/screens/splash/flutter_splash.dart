import 'package:flutter/material.dart';

class FlutterSplash extends StatefulWidget {
  const FlutterSplash({super.key});

  @override
  State<FlutterSplash> createState() => _FlutterSplashState();
}

class _FlutterSplashState extends State<FlutterSplash>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _fade = Tween(begin: 0.0, end: 1.0).animate(_ctrl);

    _ctrl.forward().whenComplete(() {
      Navigator.of(context).pushReplacementNamed('/onboarding');
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: _fade,
          child: Image.asset('assets/images/logo.png', width: 200),
        ),
      ),
    );
  }
}

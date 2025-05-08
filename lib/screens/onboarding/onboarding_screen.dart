import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List<PageViewModel> pages = [];

  @override
  void initState() {
    super.initState();
    _loadPages();
  }

  Future<void> _loadPages() async {
    final raw = await rootBundle.loadString('assets/json/onboarding.json');
    final list = json.decode(raw) as List;
    setState(() {
      pages = list.map((item) {
        return PageViewModel(
          title: item['title'],
          body: item['description'],
          image: Image.asset(item['image'], height: 200),
        );
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (pages.isEmpty) return const Scaffold(body: Center(child: CircularProgressIndicator()));
    return IntroductionScreen(
      pages: pages,
      onDone: () => Navigator.of(context).pushReplacementNamed('/welcome'),
      showSkipButton: true,
      skip: const Text("Pular"),
      next: const Icon(Icons.arrow_forward),
      done: const Text("Começar", style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }
}

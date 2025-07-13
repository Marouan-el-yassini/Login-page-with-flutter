
import 'package:flutter/material.dart';

void main() {
  runApp(const Welcomepage());
}

class Welcomepage extends StatelessWidget {
  const Welcomepage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HELLO"),
      ),
    );
  }
}
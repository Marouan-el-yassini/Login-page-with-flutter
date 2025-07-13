
import 'package:fl_proj/welcomePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ToDoApp.dart';

void main() {


  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoPage(),
      routes: {
        '/WelcomePage': (context) => Welcomepage(),
      },
    );
  }
}
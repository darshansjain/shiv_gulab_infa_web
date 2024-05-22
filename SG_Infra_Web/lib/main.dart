import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_web/SG_Infa/screen/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
        scrollbarTheme: ScrollbarThemeData(
          // thumbVisibility: ,
          thumbColor: MaterialStateProperty.all(const Color.fromARGB(
              255, 95, 95, 95)), // Set your desired color here
        ),
      ),
      title: "Shiv Gulab Infra",
      home: const HomeScreen(),
    );
  }
}
// let's start coding
import 'package:flutter/material.dart';
//import 'package:flutter_project/screen/onBosrding.dart';
import 'package:flutter_project/sign_in/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ON BOARDING SCREEN',
      theme: ThemeData.light(useMaterial3: true),
      //home: const OnBoardingScreen(),
      home:  SignInScreen(),
      //home: SignUpScreen(),
    );
  }
}
 
class name extends StatefulWidget {
  const name({super.key});

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
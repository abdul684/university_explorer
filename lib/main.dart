import 'package:flutter/material.dart';
import 'package:university_explorer/SignIn/sign_in.dart';

import 'SignIn/sign_up.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
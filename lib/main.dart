import 'package:flutter/material.dart';
// import 'screens/register.dart';
// import 'screens/login.dart';
import 'screens/Home.dart'; 


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home:  HomePage(), 
      // home: LoginPage(),  
      // home:  RegisterPage(), 
    );
  }
}
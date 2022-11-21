
import 'package:flutter/material.dart';

import 'form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 3',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Button(),
    );
  }
}

class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterPage()),
            );
          },
          child: Text("Nuevo Registro",style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}

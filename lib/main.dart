
import 'package:flutter/material.dart';

void main()
{
  runApp(const GradientApp());
}

class GradientApp extends StatelessWidget{
  const GradientApp({super.key});

  @override 
  Widget build(BuildContext context){

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Gradient ",
            style: TextStyle(
              fontSize: 27,
              fontWeight: FontWeight.w900,
              color: Colors.white
            ),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,

        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin:Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.amber,
                  Colors.red,
                ],
              )
            ),
            child: const Text(
              "Hello",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => ContadorState();
}

class ContadorState extends State<Contador> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contador')),
        body: GestureDetector(
          child: Center(
            child: Text(
              '$counter',
              textDirection: TextDirection.rtl,
              style: const TextStyle(fontSize: 140),
            ),
          ),
          onTap: () {
            setState(() {
              counter++;
            });
          },
        )
      ),
    );
  }
}
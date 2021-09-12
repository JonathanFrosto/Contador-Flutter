import 'package:flutter/material.dart';
import 'package:hello_world/services/darkmode.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);


  @override
  State<StatefulWidget> createState() => ContadorState();
}

class ContadorState extends State<Contador> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: DarkModeController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                brightness: DarkModeController.instance.getTheme()
            ),
            home: Scaffold(
                appBar: AppBar(title: const Text('Contador')),
                body: GestureDetector(
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          '$counter',
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(fontSize: 140),
                        ),
                      ),
                      Center(
                        child: Switch(
                          value: DarkModeController.instance.isDarkTheme,
                          onChanged: (value) {
                            DarkModeController.instance.changeTheme();
                          }
                        ),
                      )
                    ]
                  ),

                  onTap: () {
                    setState(() {
                      counter++;
                    });
                  },
                ),

            ),
          );
        }
    );


  }
}
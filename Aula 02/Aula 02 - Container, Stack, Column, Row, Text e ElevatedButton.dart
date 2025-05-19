import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      home: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(alignment: AlignmentDirectional.center, children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.blue,
                width: 50,
                height: 50,
              ),
            ]),
            Stack(alignment: AlignmentDirectional.center, children: [
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.cyan,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.pinkAccent,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.purple,
                  height: 50,
                  width: 50,
                ),
              ],
            ),
            Container(
              color: Colors.amber,
              height: 30,
              width: 300,
              child: Text(
                'Diamante Amarelo',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                print('Você apertou o botão.');
              },
              child: Text('Aperte o botão!'),
            ),
          ],
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

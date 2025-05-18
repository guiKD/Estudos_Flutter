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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(color: Colors.red, height: 100, width: 100),
                    Container(color: Colors.blue, height: 100, width: 100),
                    Container(color: Colors.pink, height: 100, width: 100),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(color: Colors.green, height: 100, width: 100),
                    Container(color: Colors.purple, height: 100, width: 100),
                    Container(color: Colors.pinkAccent, height: 100, width: 100),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(color: Colors.yellow, height: 100, width: 100),
                    Container(color: Colors.amber, height: 100, width: 100),
                    Container(color: Colors.white, height: 100, width: 100),
                  ]),
            ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo/screens/home.dart';
import 'package:todo/screens/auth.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => Auth(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/home': (context) => MyHomePage(),
      },
    );
  }
}

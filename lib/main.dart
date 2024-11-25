import 'package:flutter/material.dart';
import 'package:twitter/screen/home_screen.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'X',
        home: Twitter());
  }
}

class Twitter extends StatelessWidget {
  const Twitter({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Icon(
            Icons.home,
            color: Colors.white
          )
        ),
        body: const TabBarView(children: [HomeScreen()])
      ),
    );
  }
}

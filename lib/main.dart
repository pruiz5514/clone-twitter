import 'package:flutter/material.dart';
import 'package:twitter/screen/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
          toolbarHeight: 80.0,
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            'P',
                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                          ),
                        ),
                      ),
                      const Align(
                        alignment: Alignment.center, 
                        child: Icon(
                          FontAwesomeIcons.xTwitter,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('For you', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold,),),
                      Text('Following', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold,),),
                    ],
                  ),
                )
              ],
            ),
          ),
          
        ),
        body: Container(
          color: Colors.black,
          child: const TabBarView(children: [HomeScreen()]),
        )
        
      ),
    );
  }
}

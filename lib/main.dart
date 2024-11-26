import 'package:flutter/material.dart';
import 'package:twitter/screen/home_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'X',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.black,
        ),
        home: const Twitter());
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text('For you', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold,),),
                          const SizedBox(height: 1.0,),
                          Container(
                            width: 60.0,
                            height: 3.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFF1D9BF0), 
                              borderRadius: BorderRadius.circular(12.0), 
                            ),
                          )
                        ],
                      ),
                      const Text('Following', style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold,),),
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
        ),
        
        bottomNavigationBar: const BottomAppBar(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.house ,color: Colors.white, size: 20.0,),
                SizedBox(width: 40.0,),
                Icon(FontAwesomeIcons.magnifyingGlass ,color: Colors.white, size: 20.0,),
                SizedBox(width: 40.0,),
                Icon(FontAwesomeIcons.penToSquare ,color: Colors.white, size: 20.0,),
                SizedBox(width: 40.0,),
                Icon(FontAwesomeIcons.userGroup ,color: Colors.white, size: 20.0,),
                SizedBox(width: 40.0,),
                Icon(FontAwesomeIcons.bell ,color: Colors.white, size: 20.0,),
                SizedBox(width: 40.0,),
                Icon(FontAwesomeIcons.envelope ,color: Colors.white, size: 20.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

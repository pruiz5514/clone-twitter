 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        tweets(context),
      ],)
    );
  }

  Widget tweets(BuildContext context){
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Container(
            color: Colors.grey,
            height: 1.0,
            width: double.infinity,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 45.0,
                      height: 45.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage('https://pbs.twimg.com/profile_images/1810693638973779968/3PB9X9HL_400x400.jpg'),
                          fit: BoxFit.cover
                        )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only( left: 10.0, right: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        
                        children: [
                          const Text('Atlético Nacional', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          const SizedBox(width: 10),
                          Container(
                            width: 16.5,
                            height: 16.5,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/640px-Twitter_Verified_Badge.svg.png'),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text('@nacionaloficial', style: TextStyle(color: Color(0xFF71767B)),)
                        ],
                      ),
                    )
                  
                  ],
                )
              ],
            )
          )
        ],
      ),
      
    );
  }
}
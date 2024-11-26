import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          tweets(context),
          
        ],
      ),
    );
  }

  Widget tweets(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey,
            height: 1.0,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1810693638973779968/3PB9X9HL_400x400.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Atlético Nacional',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          Container(
                            width: 16.5,
                            height: 16.5,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/Twitter_Verified_Badge.svg/640px-Twitter_Verified_Badge.svg.png',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          const Text(
                            '@nacionaloficial',
                            style: TextStyle(color: Color(0xFF71767B)),
                          ),
                          const SizedBox(width: 4.0),
                          const Text(
                            '27/07/16',
                            style: TextStyle(color: Color(0xFF71767B)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4.0),
                      const Text(
                        'Somos el único equipo del país con dos títulos de Copa Libertadores. ¡Conquistamos América en 1989 y 2016!',
                        style: TextStyle(color: Colors.white),
                        softWrap: true, 
                        overflow: TextOverflow.visible, 
                      ),
                      const SizedBox(height: 10.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network('https://pbs.twimg.com/media/Coa0yKMWcAAvKHK?format=jpg&name=small',
                          width: double.infinity,
                          height: 220.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Row(
                        children: [
                          Icon(FontAwesomeIcons.comment,color:  Color(0xFF71767B), size: 15.0,),
                          SizedBox(width: 5.0,),
                          Text('92', style: TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          SizedBox(width: 22.0,),
                          Icon(FontAwesomeIcons.retweet,color:  Color(0xFF71767B), size: 15.0,),
                          SizedBox(width: 5.0,),
                          Text('2.8K', style: TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          SizedBox(width: 22.0,),
                          Icon(FontAwesomeIcons.solidHeart, color:  Colors.red, size: 15.0,),
                          SizedBox(width: 5.0,),
                          Text('3K', style: TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          SizedBox(width: 22.0,),
                          Icon(FontAwesomeIcons.chartSimple,color:  Color(0xFF71767B), size: 15.0,),
                          SizedBox(width: 5.0,),
                          Text('111K', style: TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          SizedBox(width: 22.0,),
                          Icon(FontAwesomeIcons.bookmark,color:  Color(0xFF71767B), size: 15.0,),
                          SizedBox(width: 22.0,),
                          Icon(FontAwesomeIcons.squareShareNodes,color:  Color(0xFF71767B), size: 15.0,),
                          
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

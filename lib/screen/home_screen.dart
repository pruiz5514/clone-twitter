import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          tweets(
            context,
            profileImage: 'https://pbs.twimg.com/profile_images/1810693638973779968/3PB9X9HL_400x400.jpg',
            name:'Atlético Nacional',
            userName: '@nacionaloficial',
            verified: true,
            date: '27/07/16',
            content: 'Somos el único equipo del país con dos títulos de Copa Libertadores. ¡Conquistamos América en 1989 y 2016!',
            tweetImage: 'https://pbs.twimg.com/media/Coa0yKMWcAAvKHK?format=jpg&name=small',
            comments: '92',
            retweets: '2.8K',
            likes: '3K',
            views: '111K',
          ),
          tweets(
            context,
            profileImage: 'https://pbs.twimg.com/profile_images/1810693638973779968/3PB9X9HL_400x400.jpg',
            name:'Atlético Nacional',
            userName: '@nacionaloficial',
            verified: true,
            date: '27/07/16',
            content: 'NAL vs IDV |1-0| Termina el encuentro por la final de la libertadores. ¡SOMOS CAMPEONES DE AMERICA!' ,
            comments: '292',
            retweets: '9.8K',
            likes: '23K',
            views: '111K',
          ),
          
        ],
      ),
    );
  }

  Widget tweets(
    BuildContext context,{
      String? profileImage,
      required String name,
      required String userName,
      required bool verified,
      required String date,
      required String content,
      String? tweetImage,
      required String comments,
      required String retweets,
      required String likes,
      required String views,
    }) {
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
                profileImage != null ?
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
                ) :
                Container(
                  width: 40.0,
                  height: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey,
                  ),
                  child: const Icon(Icons.person, color: Colors.white),
                ),

                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 4.0),
                          
                          if(verified)
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
                          Text(
                            userName,
                            style: const TextStyle(color: Color(0xFF71767B)),
                          ),
                          const SizedBox(width: 4.0),
                          Text(
                            date,
                            style: const TextStyle(color: Color(0xFF71767B)),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        content,
                        style: const TextStyle(color: Colors.white),
                        softWrap: true, 
                        overflow: TextOverflow.visible, 
                      ),
                      const SizedBox(height: 10.0),
                      if(tweetImage != null)
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network('https://pbs.twimg.com/media/Coa0yKMWcAAvKHK?format=jpg&name=small',
                            width: double.infinity,
                            height: 220.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      const SizedBox(height: 10.0),
                      Row(
                        children: [
                          const Icon(FontAwesomeIcons.comment,color:  Color(0xFF71767B), size: 15.0,),
                          const SizedBox(width: 5.0,),
                          Text(comments, style: const TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          const SizedBox(width: 20.0,),
                          const Icon(FontAwesomeIcons.retweet,color:  Color(0xFF71767B), size: 15.0,),
                          const SizedBox(width: 5.0,),
                          Text(retweets, style: const TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          const SizedBox(width: 20.0,),
                          const Icon(FontAwesomeIcons.solidHeart, color:  Colors.red, size: 15.0,),
                          const SizedBox(width: 5.0,),
                          Text(likes, style: const TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          const SizedBox(width: 20.0,),
                          const Icon(FontAwesomeIcons.chartSimple,color:  Color(0xFF71767B), size: 15.0,),
                          const SizedBox(width: 5.0,),
                          Text(views, style: const TextStyle(color: Color(0xFF71767B), fontSize: 13.0),),
                          const SizedBox(width: 20.0,),
                          const Icon(FontAwesomeIcons.bookmark,color:  Color(0xFF71767B), size: 15.0,),
                          const SizedBox(width: 20.0,),
                          const Icon(FontAwesomeIcons.squareShareNodes,color:  Color(0xFF71767B), size: 15.0,),
                          
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

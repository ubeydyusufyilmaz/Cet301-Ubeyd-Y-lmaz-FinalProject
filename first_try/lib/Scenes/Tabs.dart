import 'package:flutter/material.dart';
import 'package:first_try/Data/data.dart';
import 'package:first_try/Widgets/ForYouContainer.dart';
import 'package:flutter/gestures.dart';



void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBottomNavigationBar(),
    );
  }
}



class MyBottomNavigationBar extends StatefulWidget {

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> with SingleTickerProviderStateMixin {

  static bool CheckBoxValue = false;



  static buildForYouContainers() {
    List<Widget> forYouContainers = [];
    for (Article article in forYou) {
      forYouContainers.add(ForYouContainer(
        article: article,
      ));
    }
    return Column(
      children: forYouContainers,
    );


  }











  int _currentIndex = 0;

  final tabs = [
    SingleChildScrollView(
      child: Column(
        children: <Widget> [
          AppBar(
          title: Text("Movies"),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://i.pinimg.com/originals/7a/38/d0/7a38d06ef4402ae07bb8c4681403a6b3.jpg'),
                  width: 400, height: 550,),
                ListTile(
                  title: const Text('The Hunt',
                      style: TextStyle( fontSize: 30, color:Colors.black)),
                  subtitle: Text(
                    'Directed by Thomas Vinterberg',
                    style: TextStyle(fontSize: 22, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'A kindergarten teacher\'s (Mads Mikkelsen) world collapses around him after one of his students (Annika Wedderkopp), who has a crush on him, implies that he committed a lewd act in front of her.',
                    style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.play_arrow),
                          Text("Trailer", style: TextStyle(fontSize: 15))
                        ],
                      ),
                    )

                  ],
                ),

              ],
            ),

          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://s3.amazonaws.com/criterion-production/films/1b263590b0faeba99ca35b4fc02f7667/mTibr0yzCnoUK8wYtfEOXwKwAwPDUa_original.jpg'),
                  width: 400, height: 550,),

                ListTile(
                  title: const Text('In The Mood For Love',
                      style: TextStyle( fontSize: 30, color:Colors.black)),
                  subtitle: Text(
                    'Directed by Wong Kar-Wai',
                    style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'In the Mood for Love belongs to Cheung, whose beauty lights up the movie like the polar star lights up a winter sky. Cheung is one of the few modern actresses who understands her own physical beauty as an expressive instrument.',
                    style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },

                        child: Row( // Replace with a Row for horizontal icon + text
                            children: <Widget>[
                            Icon(Icons.play_arrow),
                        Text("Trailer", style: TextStyle(fontSize: 15))
                      ],
                    ),
                    )

                  ],
                ),

              ],
            ),

          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://m.media-amazon.com/images/M/MV5BMTgzNTgzODU0NV5BMl5BanBnXkFtZTcwMjEyMjMzMQ@@._V1_.jpg'),
                  width: 400, height: 550,),
                SizedBox(height: 10),
                ListTile(
                  title: const Text('Little Miss Sunshine',
                      style: TextStyle( fontSize: 30, color:Colors.black)),
                  subtitle: Text(
                    'Directed by Jonathan Dayton',
                    style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'A family decide to travel across the country when their daughter wants to participate in a beauty pageant, unaware of what the journey has in store for them.',
                    style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },

                      child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.play_arrow),
                          Text("Trailer", style: TextStyle(fontSize: 15))
                        ],
                      ),
                    )

                  ],
                ),

              ],
            ),

          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://images-na.ssl-images-amazon.com/images/I/51cY0Lsf1DL._SX348_BO1,204,203,200_.jpg'),
                  width: 400, height: 550,),

                ListTile(
                  title: const Text('Cidade de Deus',
                      style: TextStyle( fontSize: 30, color:Colors.black)),
                  subtitle: Text(
                    'Directed by Kátia Lund',
                    style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'In the poverty-stricken favelas of Rio de Janeiro in the 1970s, two young men choose different paths. Rocket (Seu Jorge) is a budding photographer who documents the increasing drug-related violence of his neighborhood.',
                    style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },

                      child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.play_arrow),
                          Text("Trailer", style: TextStyle(fontSize: 15))
                        ],
                      ),
                    )

                  ],
                ),

              ],
            ),

          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://www.inkroci.com/culture_movie/wp-content/uploads/2019/05/Nocturnal-Animals.jpg'),
                  width: 400, height: 550,),
                SizedBox(height: 10),
                ListTile(
                  title: const Text('Nocturnal Animals',
                      style: TextStyle( fontSize: 30, color:Colors.black)),
                  subtitle: Text(
                    'Directed by Tom Ford',
                    style: TextStyle(fontSize: 22,color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Susan receives a manuscript of her ex-husband Edward\'s new novel and finds it very compelling. However, the story forces her to confront several disturbing truths about their marital life.',
                    style: TextStyle(fontSize: 18, color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },

                      child: Row( // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.play_arrow),
                          Text("Trailer", style: TextStyle(fontSize: 15))
                        ],
                      ),
                    )

                  ],
                ),

              ],
            ),

          ),


        ],),
    ),
    ListView(
      children: [
        AppBar(
          title: Text("News"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
        ),
        SizedBox(
          height: 10,
        ),
        buildForYouContainers(),
      ],
    ),

         Scaffold(
           appBar:AppBar(
             title: const Text('Watchlist'),
           ),
          body:Column(
           children: <Widget>[
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: <Widget>[
                 Text('The Hunt',style: TextStyle(fontSize: 18,)),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: Checkbox(
                     value: CheckBoxValue,
                     onChanged: (bool value) {

                     },
                   ),),

               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: <Widget>[
                 Text('In The Mood For Love',style: TextStyle(fontSize: 18,)),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: Checkbox(
                   value: CheckBoxValue,
                   onChanged: (bool value) {

                   },
                 ),),

               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: <Widget>[
                 Text('Little Miss Sunshine',style: TextStyle(fontSize: 18,)),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: Checkbox(
                     value: CheckBoxValue,
                     onChanged: (bool value) {

                     },
                   ),),

               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: <Widget>[
                 Text('Cidade de Deus',style: TextStyle(fontSize: 18,)),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: Checkbox(
                     value: CheckBoxValue,
                     onChanged: (bool value) {

                     },
                   ),),

               ],
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,

               children: <Widget>[
                 Text('Nocturnal Animals',style: TextStyle(fontSize: 18,)),
                 Align(
                   alignment: Alignment.bottomRight,
                   child: Checkbox(
                     value: CheckBoxValue,
                     onChanged: (bool value) {

                     },
                   ),),

               ],
             ),
           ],
         ),
         ),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.settings),
              title: new Text("Settings")
          ),
          BottomNavigationBarItem(
              icon: new Icon(Icons.contacts),
              title: new Text("Contacts")
          ),
        ],
        onTap: (index){
            setState(() {
              _currentIndex = index;
            });
        }
      ),

    );
  }


}



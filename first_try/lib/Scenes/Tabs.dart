import 'package:flutter/material.dart';

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

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {

  int _currentIndex = 0;

  final tabs = [
    SingleChildScrollView(
      child: Column(
        children: <Widget> [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image(
                  image: NetworkImage('https://s3.amazonaws.com/criterion-production/films/1b263590b0faeba99ca35b4fc02f7667/mTibr0yzCnoUK8wYtfEOXwKwAwPDUa_original.jpg'),
                  width: 200, height: 400,),

                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Card title 12'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 2'),
                    ),
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
                  width: 200, height: 400,),

                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Card title 12'),
                  subtitle: Text(
                    'Secondary Text',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Greyhound divisively hello coldly wonderfully marginally far upon excluding.',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
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
                      child: const Text('ACTION 1'),
                    ),
                    FlatButton(
                      textColor: const Color(0xFF6200EE),
                      onPressed: () {
                        // Perform some action
                      },
                      child: const Text('ACTION 5'),
                    ),
                  ],
                ),

              ],
            ),

          ),


        ],),
    ),
    SingleChildScrollView(child: Text('News'),),
    SingleChildScrollView(child: Text('Quiz'),),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
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



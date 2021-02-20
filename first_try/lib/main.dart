import 'package:flutter/material.dart';
import 'package:first_try/Animations/FadeAnimation.dart';
import 'package:first_try/Scenes/Tabs.dart';




void gotoMyBottomNavigationBar(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => MyBottomNavigationBar(),),
  );
}
void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',

    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HomePage(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => MyApp(),
    },
  ));
}


class HomePage extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue[900],
              Colors.blue[800],
              Colors.blue[400],
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            SizedBox(height: 60,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget> [
                  FadeAnimation(1, Text("Login", style: TextStyle(color:Colors.white, fontSize:40),)),
                  SizedBox(height: 10,),
                  FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color:Colors.white, fontSize:18),)),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60),),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget> [
                        SizedBox(height: 60,),
                    FadeAnimation(1.4, Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [ BoxShadow(
                              color: Color.fromRGBO(80, 95, 27, 3),
                              blurRadius: 20,
                              offset: Offset(0, 10)
                            )]
                          ),
                          child: Column(
                            children: <Widget> [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "Email or Phone number",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),
                            ]
                          ),
                        )),
                        SizedBox(height: 40,),
                        FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color:Colors.grey),)),
                        SizedBox(height: 40,),
                        Column(
                          children:  [ElevatedButton(
                            child: Text('LOGIN'),
                            onPressed: () {

                            Navigator.pushNamed(context, '/second');
                        },

                          ),
                          ]),
                            



                        SizedBox(height: 50,),
                        Text("Continue with social media", style: TextStyle(color:Colors.grey),),
                        SizedBox(height: 30,),
                        Row(
                          children: <Widget> [
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue
                                ),
                                child: Center(
                                  child: Text("Facebook", style: TextStyle(color:Colors.white, fontWeight:FontWeight.bold),),
                                ),
                              ),
                            ),
                            SizedBox(width:30),
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.black
                                ),
                                child: Center(
                                  child: Text("Github", style: TextStyle(color:Colors.white, fontWeight:FontWeight.bold),),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),

                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}



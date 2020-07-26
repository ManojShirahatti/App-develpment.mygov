import 'package:cloud_institute/src/VC.dart';
import 'package:flutter/material.dart';
import 'auth.dart';
import 'welcomePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: new ThemeData(scaffoldBackgroundColor: const Color(0x74B9FF)),
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Home> {
  AuthMethods authMethods = new AuthMethods();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(' ' + "Cloud Institute",
            style: TextStyle(
              fontSize: 22.0,
            ),
            textAlign: TextAlign.justify),
        titleSpacing: 1.0,
        backgroundColor: Color(0xff3C40C6),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  authMethods.SignOut();
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(),
                      ));
                },
                child: Icon(Icons.exit_to_app),
              )),
        ],
      ),
      body: GridView.count(
        padding: EdgeInsets.all(3.0),
        crossAxisCount: 2,
        crossAxisSpacing: 1.0,
        mainAxisSpacing: 1.0,
        children: <Widget>[
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: IconButton(
                      iconSize: 70,
                      icon: Image.asset('assets/school.png'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => VirtualPage()));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Virtual Classroom",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VirtualPage()));
            },
          ),
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                      iconSize: 70,
                      icon: Image.asset('assets/online-class.png'),
                      onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Recorded Classes",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                      iconSize: 70,
                      icon: Image.asset('assets/homework.png'),
                      onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "HomeWork",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                      iconSize: 70,
                      icon: Image.asset('assets/list.png'),
                      onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Center(
                    child: Text(
                      "Test" + ' ',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                      iconSize: 70,
                      icon: Image.asset('assets/calendar.png'),
                      onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Events",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                      iconSize: 70,
                      icon: Image.asset('assets/result.png'),
                      onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Test Result",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                      iconSize: 70,
                      icon: Image.asset('assets/assignment.png'),
                      onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "My Task",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.white,
            elevation: 0,
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: IconButton(
                      iconSize: 60,
                      icon: Image.asset('assets/noti.png'),
                      onPressed: null),
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Notification's",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

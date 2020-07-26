import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}

class VirtualPage extends StatefulWidget {
  VirtualPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _VirtualPageState createState() => _VirtualPageState();
}

class _VirtualPageState extends State<VirtualPage> {
  int _bottomNavBar = 0;
  final List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Virtual Classroom",
          style: TextStyle(
            color: Color(0xfff01CBC6),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: 411,
        height: 168,
        child: Stack(
          children: <Widget>[
            Positioned(
                top: 21,
                left: 12,
                child: Text(
                  'j',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
                top: 68,
                left: 12,
                child: Text(
                  'Description',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
            Positioned(
              top: 102,
              left: 12,
              child: Text(
                'Teacher Name',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Color(0xfff4BCFFA),
            borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(35.0),
                bottomRight: const Radius.circular(35.0))),
      ),
    );
  }
}

import 'package:cloud_institute/src/VC.dart';
import 'package:cloud_institute/src/loginPage.dart';
import 'package:cloud_institute/src/signup.dart';
import 'package:cloud_institute/src/work.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomPage extends StatefulWidget {
  BottomPage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _VirtualPageState createState() => _VirtualPageState();
}

class _VirtualPageState extends State<BottomPage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = [
    VirtualPage(),
    MyApp(),
    SignUpPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
              size: 35,
            ),
            title: Text(
              'Classroom',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.work,
              color: Colors.white,
              size: 35,
            ),
            title: Text(
              'Work',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.file_upload,
              color: Colors.white,
              size: 35,
            ),
            title: Text(
              'Upload',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedLabelStyle: GoogleFonts.portLligatSans(
          fontWeight: FontWeight.w700,
          color: Colors.blue[500],
        ),
        selectedFontSize: 25,
        selectedItemColor: Colors.amber[800],
        unselectedFontSize: 16,
        onTap: _onItemTapped,
      ),
    );
  }
}

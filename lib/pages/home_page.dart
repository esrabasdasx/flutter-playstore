import 'package:flutter/material.dart';
import 'package:playstore/pages/games_page.dart';
import 'package:playstore/pages/applications_page.dart';
import 'package:playstore/pages/search_page.dart';
import 'package:playstore/pages/books_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
    Games(),
    ApplicationsPage(),
    SearchPage(),
    BooksPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,

      body:Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: _tabs,
            ),
          ),
        ]
      ),



      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue.shade800,
        unselectedItemColor: Colors.grey.shade500,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_esports),
            label: "Oyunlar",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps, size: 25),
            label: "Uygulamalar",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Ara",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Kitaplar",
          ),



        ],
        type: BottomNavigationBarType.fixed,
      ),

    );
  }
}







import 'package:flutix/ui/homepage.dart';
import 'package:flutix/ui/myticketpage.dart';
import 'package:flutix/ui/profilepage.dart';
import 'package:flutter/material.dart';

class HomePageUser extends StatefulWidget {
  @override
  _HomePageUserState createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  int _currentIndex = 0;
  final List<Widget> _children = [homepage(), myticket(), profilpage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('User Home Page'),
        backgroundColor: Colors.white,
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget buildBottomNavigationBar() {
    // Penyesuaian atau konfigurasi lebar dari layar
    int itemsCount = 3;

    return BottomNavigationBar(
      onTap: onTabTapped,

      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.movie),
          label: 'Movie',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: 'Liked',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ]
          .take(itemsCount)
          .toList(), // Mengambil hanya sejumlah item yang diperlukan
    );
  }
}

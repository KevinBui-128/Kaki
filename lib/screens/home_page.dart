import 'package:flutter/material.dart';
import 'package:kaki/screens/category/category_screen.dart';
import 'package:kaki/screens/home/home_screen.dart';
import 'package:kaki/screens/notification/notification_screen.dart';
import 'package:kaki/screens/personal/personal_screen.dart';
import 'package:kaki/screens/search/search_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 0;
  final List<Widget> _screen = [
    HomeScreen(),
    CategoryScreen(),
    SearchScreen(),
    NotificationScreen(),
    PersonalScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (int index) {
          setState(() {
            this._index = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        items: [
          BottomNavigationBarItem(
              title: Text('Trang chủ'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Danh mục'), icon: Icon(Icons.dashboard)),
          BottomNavigationBarItem(
              title: Text('Tìm kiếm'), icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              title: Text('Thông báo'),
              icon: _index == 3
                  ? Icon(Icons.notifications)
                  : Icon(Icons.notifications_none)),
          BottomNavigationBarItem(
              title: Text('Cá nhân'),
              icon:
                  _index == 4 ? Icon(Icons.person) : Icon(Icons.person_outline)),
        ],
      ),
    );
  }
}

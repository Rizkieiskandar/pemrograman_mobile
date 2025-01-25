import 'pakage:flutter/material.dart';
import 'MyHomePage.dart';
import 'ListViewLearning.dart';
import 'GridViewLearning.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => _MainScreenState();
}

class MainScreenState extends State <MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    MyHomePage(title; 'Flutter Demo Home Page'),
    GridViewLearning(),
    ListsWithCards(),
  ];

  @override
  Widget build(builContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Demo'),
      ), // AppBar
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        CurrentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ), // BottomNavigationBarItem
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3),
              label: 'GridView',
          ), // BottomNavigationBarItem
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_3x3),
              label: 'GridView',
          ), // BottomNavigationBarItem
      )
    )
  }



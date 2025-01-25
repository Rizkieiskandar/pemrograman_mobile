import 'package:flutter/material.dart';
import 'package:tugas_3/layout/home/ListViewLearning.dart';
import 'package:tugas_3/layout/home/GridViewLearning.dart';
import 'package:tugas_3/layout/home/Newspage.dart';

class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    Newspage(),
    GridViewLearning(),
    ListsWithCards(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rizkie Pratama Putra Iskandar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            fontSize: 24, // Menambahkan ukuran font untuk memperjelas judul
          ),
        ),
        backgroundColor: const Color.fromARGB(
            255, 83, 255, 77), // Warna yang lebih modern untuk AppBar
        elevation: 8, // Menambahkan bayangan untuk efek 3D
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white, // Mengganti warna ikon yang terpilih
        unselectedItemColor:
            Colors.grey, // Mengganti warna ikon yang tidak terpilih
        backgroundColor: const Color.fromARGB(255, 83, 255,
            77), // Background BottomNavigationBar yang lebih mencolok
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_3x3),
            label: 'GridView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
        ],
      ),
    );
  }
}

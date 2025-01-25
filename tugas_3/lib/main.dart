import 'package:flutter/material.dart';
import 'layout/home/homepagemenu.dart'; // Pastikan file ini sudah ada dan sesuai

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // Menghapus label debug di pojok kanan atas
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor:
            const Color.fromARGB(255, 73, 183, 58), // Warna utama aplikasi
        useMaterial3: true, // Mengaktifkan fitur Material Design 3
      ),
      home: MainScreen(), // Widget utama aplikasi
    );
  }
}

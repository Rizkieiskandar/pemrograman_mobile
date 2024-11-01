import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// Widget utama aplikasi
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      theme: ThemeData(
        useMaterial3: true, // Mengaktifkan Material Design 3
        colorSchemeSeed: Colors.teal, // Warna utama tema aplikasi
      ),
      home: HomePage(), // Menampilkan halaman utama
    );
  }
}

// Halaman utama aplikasi
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tugas 2'), // Judul di AppBar
        centerTitle: true, // Menempatkan judul di tengah
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Jarak tepi dari seluruh konten
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Jumlah card per baris
            crossAxisSpacing: 12, // Jarak horizontal antar card
            mainAxisSpacing: 12, // Jarak vertikal antar card
          ),
          itemCount: 6, // Jumlah total card yang ditampilkan
          itemBuilder: (context, index) {
            return Card(
              elevation: 2, // Tinggi bayangan card
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0), // Sudut bulat pada card
              ),
            );
          },
        ),
      ),
    );
  }
}

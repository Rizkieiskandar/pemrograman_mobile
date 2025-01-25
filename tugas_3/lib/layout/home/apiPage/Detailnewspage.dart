import 'package:flutter/material.dart';
import 'package:tugas_3/layout/model/Getnews.dart';

class Detailnewspage extends StatelessWidget {
  final Getnews getnews;

  const Detailnewspage({super.key, required this.getnews});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Page'),
        backgroundColor: const Color.fromARGB(255, 92, 255,
            77), // Menambahkan warna yang lebih menarik pada AppBar
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
              16.0), // Menambahkan padding untuk jarak konten dengan tepi layar
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Menampilkan id dengan gaya yang lebih tegas
              Text(
                'ID: ${getnews.id}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10), // Memberikan ruang antar elemen

              // Menampilkan judul dengan ukuran lebih besar
              Text(
                'Title: ${getnews.title}',
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600, // Judul lebih tegas
                ),
              ),
              const SizedBox(height: 20), // Memberikan ruang antar bagian

              // Menambahkan label Body dan konten
              const Text(
                'Body:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                  height: 10), // Memberikan ruang antar label dan konten
              Text(
                getnews.body,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
                textAlign: TextAlign
                    .justify, // Menambahkan perataan teks agar lebih rapi
              ),
            ],
          ),
        ),
      ),
    );
  }
}

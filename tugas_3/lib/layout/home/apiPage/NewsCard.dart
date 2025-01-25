import 'package:flutter/material.dart';
import 'package:tugas_3/layout/model/Getnews.dart';
import 'Detailnewspage.dart';

class Newscard extends StatelessWidget {
  const Newscard({super.key, required this.getnews});
  final Getnews getnews;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: ((context) {
              return Detailnewspage(getnews: getnews);
            }),
          ),
        );
      },
      child: Card(
        elevation: 5, // Memberikan efek shadow pada kartu
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(10), // Memberikan border-radius pada kartu
        ),
        margin: const EdgeInsets.symmetric(
            vertical: 8, horizontal: 16), // Menambahkan margin antar kartu
        child: Padding(
          padding:
              const EdgeInsets.all(16.0), // Menambahkan padding di dalam kartu
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Judul berita dengan gaya yang lebih menarik
              Text(
                getnews.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18, // Ukuran font yang lebih besar
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10), // Jarak antara judul dan body
              // Menampilkan cuplikan dari body berita
              Text(
                getnews.body,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors
                      .black54, // Warna yang lebih lembut untuk isi konten
                ),
                maxLines: 3, // Membatasi jumlah baris yang ditampilkan
                overflow: TextOverflow
                    .ellipsis, // Menambahkan elipsis jika teks terlalu panjang
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
// import '../layout/home/GridViewLearning.dart';
import 'layout/home/homepagewithmenu.dart';
// import 'ListsWithCards.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//               title: Text('Multiple Lists with Cards')
//           ),
//           body: GridView.builder(
//               padding: const EdgeInsets.all(38),
//               itemCount: 8,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: 2 / 2,
//                   crossAxisSpacing: 10,
//                   mainAxisExtent: 10),
//               itemBuilder: (ctx, i) => GridViewLearning())
//       ),
//     );
//   }      // body: ListsWithCards(),
// }

// class MyApp extends StatelessWidget{
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
//         useMaterial3: true,
//       ), // ThemeData
//       // home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Ini adalah Judul'),
//           backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         ), // AppBar
//         body: GridView.builder(
//             padding: const EdgeInsets.all(30),
//             itemCount: 8,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               childAspectRatio: 2 / 2,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10, // SliverGridDelegateWithFixedCrossAxisCount
//             ),
//             itemBuilder: (ctx, i) => GridViewLearning() // GridView.builder
//         ), // Scaffold
//       ), // MaterialApp
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyanAccent),
        useMaterial3: true,
      ),
      home: MainScreen(),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'views/home_page.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Pixabay Image Gallery',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: HomePage(),
//     );
//   }
// }

// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/image_controller.dart';
import 'views/home_page.dart';

void main() {
  Get.put(ImageController());  // Initializing the controller
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(  // Note: Using GetMaterialApp for GetX functionality
      title: 'Image Gallery',
      home: HomePage(),
    );
  }
}


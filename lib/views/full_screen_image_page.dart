import 'package:flutter/material.dart';
import '../models/image_data.dart';

class FullScreenImagePage extends StatelessWidget {
  final ImageData image;

  FullScreenImagePage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Full Image'),
      ),
      body: GestureDetector(
        onTap: () => Navigator.of(context).pop(),
        child: Center(
          child: Hero(
            tag: image.id,
            child: Image.network(image.url, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}

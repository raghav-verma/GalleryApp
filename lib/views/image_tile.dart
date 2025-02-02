import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../models/image_data.dart';
import 'full_screen_image_page.dart';

// class ImageTile extends StatelessWidget {
//   final ImageData image;
//
//   ImageTile({required this.image});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => Navigator.of(context).push(MaterialPageRoute(
//         builder: (_) => FullScreenImagePage(image: image),
//       )),
//       child: GridTile(
//         child: Hero(
//           tag: image.id,
//           child: Image.network(image.url, fit: BoxFit.cover),
//         ),
//         footer: Container(
//           color: Colors.black54,
//           child: ListTile(
//             leading: Icon(Icons.thumb_up, color: Colors.white, size: 20),
//             title: Text("${image.likes} Likes", style: TextStyle(color: Colors.white)),
//             subtitle: Text("${image.views} Views", style: TextStyle(color: Colors.white)),
//           ),
//         ),
//       ),
//     );
//   }
// }

class ImageTile extends StatelessWidget {
  final ImageData image;

  ImageTile({required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (_) => FullScreenImagePage(image: image),
      )),
      child: Hero(
        tag: image.id,
        child: Column(
          children: [
            Container(width: MediaQuery.of(context).size.width/4,child: Image.network(image.url, fit: BoxFit.cover )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.heart_broken),
                      const SizedBox(
                        width: 2,
                      ),
                      Text("${image.likes} Likes"),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.heart_broken),
                      const SizedBox(
                        width: 2,
                      ),
                      Text("${image.views} Views"),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:get/get.dart';
import '../models/image_data.dart';

class ImageController extends GetxController {
  var images = <ImageData>[].obs;

  void toggleLike(String imageId) {
    int index = images.indexWhere((img) => img.id == imageId);
    if (index != -1) {
      images[index].isLiked = !images[index].isLiked;
      if (images[index].isLiked) {
        images[index].likes++;
      } else {
        images[index].likes--;
      }
      images.refresh();
    }
  }
}

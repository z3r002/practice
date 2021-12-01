import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoPage extends StatelessWidget {
   const PhotoPage({Key? key, required this.image, }) : super(key: key);
  final String image;



  @override
  Widget build(BuildContext context) {
    print(image);
    return Container(
      constraints: BoxConstraints.expand(
        height: MediaQuery.of(context).size.height,
      ),
      child: GestureDetector(
        onTapDown: (_) {
          Navigator.pop(context);
        },
        child: PhotoView(
          imageProvider: NetworkImage(image),
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 1.8,
        ),
      ),
    );
  }
}
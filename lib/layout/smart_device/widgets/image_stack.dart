import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';

class CircularImages extends StatelessWidget {
  List<String> images = <String>[
    "https://images.unsplash.com/photo-1458071103673-6a6e4c4a3413?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1518806118471-f28b20a1d79d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&q=80",
    "https://images.unsplash.com/photo-1470406852800-b97e5d92e2aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
    "https://images.unsplash.com/photo-1473700216830-7e08d47f858e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  ];

  final int? imageCount;

  CircularImages({this.imageCount});
  @override
  Widget build(BuildContext context) {
    return ImageStack(
      imageList: images,
      totalCount: images
          .length, // If larger than images.length, will show extra empty circle
      imageRadius: 25, // Radius of each images
      imageCount: imageCount, // Maximum number of images to be shown in stack
      imageBorderWidth: 0,
      imageBorderColor: Colors.white,
      extraCountBorderColor: Colors.white,
      extraCountTextStyle: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 10.0,
          fontWeight: FontWeight.bold),

      showTotalCount: true, // Border width around the images
    );
  }
}

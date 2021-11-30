import 'package:flutter/material.dart';
import 'package:practice/screens/gallery/widgets/custom_grid_view.dart';

class GallaryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomGridView(count: 2));
  }
}

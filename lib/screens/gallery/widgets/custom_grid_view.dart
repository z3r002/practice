import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../productController.dart';
import 'Card.dart';

class CustomGridView extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  final int count;

  CustomGridView({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Obx(() {
            if (productController.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return GridView.builder(
                itemCount: productController.productList.length,
                itemBuilder: (context, index) {
                  return ProductTile(productController.productList[index]);
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: count,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16),
              );
            }
          }),
        )
      ],
    );
  }
}

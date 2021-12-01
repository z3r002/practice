import 'package:flutter/material.dart';

import '../Product.dart';
import '../photo_screen.dart';

class ProductTile extends StatelessWidget {
  final Product product;

  const ProductTile(this.product);


  @override
  Widget build(BuildContext context) {
    print(product.id);
    print(product.thumbnailUrl);
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PhotoPage(image: product.thumbnailUrl,),
          ),
        );
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: double.infinity,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.network(
                  product.thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

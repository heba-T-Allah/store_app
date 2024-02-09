import 'package:flutter/material.dart';
import 'package:store_app/core/routes.dart';
import 'package:store_app/models/product_model.dart';

class ItemCard extends StatelessWidget {
  ItemCard({super.key, required this.product});
  ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.updateProductPage);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 220,
            height: 130,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey.shade100,
                  offset: Offset(10, 0),
                  spreadRadius: 0)
            ]),
            child: Card(
              elevation: 10,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title.substring(0, 9),
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${product.price}",
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: -60,
            child: Image.network(
              product.image,
              width: 100,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}

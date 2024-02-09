import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key
      // , required this.product
      });
  // ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update Product"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            CustomTextField(
              hintText: "Product Name",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "Description",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "Product Price",
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              hintText: "Product Image",
            ),
          ],
        ),
      ),
    );
  }
}

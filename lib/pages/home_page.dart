import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/all_product_service.dart';
import 'package:store_app/widgets/item_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.cartPlus,
                    color: Colors.black,
                  ))
            ],
            centerTitle: true,
            title: const Text(
              "New Trend",
              style: TextStyle(color: Colors.black),
            )),
        body: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16, top: 100),
            child: FutureBuilder<List<ProductModel>>(
              future: AllProductsService().getAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong${snapshot.error}");
                } else if (snapshot.hasData) {
                  List<ProductModel> allProductList = snapshot.data!;
                  return GridView.builder(
                    clipBehavior: Clip.none,
                    itemCount: allProductList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 80),
                    itemBuilder: (context, index) => ItemCard(
                      product: allProductList[index],
                    ),
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            )));
  }
}

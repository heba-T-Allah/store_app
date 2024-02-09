import 'package:flutter/material.dart';
import 'package:store_app/core/routes.dart';
import 'package:store_app/pages/home_page.dart';
import 'package:store_app/pages/update_product_page.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Routes.homePage: (context) => const HomePage(),
        Routes.updateProductPage: (context) => const UpdateProductPage()
      },
      initialRoute: Routes.homePage,
    );
  }
}

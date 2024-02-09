import 'package:store_app/core/api_key.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoryProducts(
      {required String categoryName}) async {
    List<dynamic> data =
        await Api().get(url: "${EndPoint.getCategoryProduct}$categoryName");

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(ProductModel.fromJson(data[i]));
    }
    return productsList;
  }
}

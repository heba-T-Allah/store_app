import 'package:store_app/core/api_key.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({
    required String title,
    required String price,
    required String description,
    required String category,
    required String image,
    // required String rating
  }) async {
    Map<String, dynamic> data = await Api().put(url: EndPoint.products, body: {
      ApiKey.title: title,
      ApiKey.price: price,
      ApiKey.description: description,
      ApiKey.category: category,
      ApiKey.image: image,
      // ApiKey.rating: rating
    });
    return ProductModel.fromJson(data);
  }
}

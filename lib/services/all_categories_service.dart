import '../core/api_key.dart';
import '../helper/api.dart';

class AllCategoriesServise {
  Future<List<dynamic>> getAllCategories() async {
    List<dynamic> data = await Api().get(url: EndPoint.categories);
    return data;
  }
}

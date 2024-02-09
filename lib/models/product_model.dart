import 'package:store_app/core/api_key.dart';

class ProductModel {
  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  ProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rating});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        id: jsonData[ApiKey.id],
        title: jsonData[ApiKey.title],
        price: jsonData[ApiKey.price],
        description: jsonData[ApiKey.description],
        category: jsonData[ApiKey.category],
        image: jsonData[ApiKey.image],
        rating: Rating.fromJson(jsonData[ApiKey.rating]));
  }
}

class Rating {
  final num rate;
  final int count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(jsonData) {
    return Rating(rate: jsonData[ApiKey.rate], count: jsonData[ApiKey.count]);
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['rate'] = this.rate;
  //   data['count'] = this.count;
  //   return data;
  // }
}

import 'package:store_app/helper/api.dart';
import 'package:store_app/model/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required String title,
    required String description,
    required String price,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(url: '', body: {
      'title': title,
      'price': price,
      'description': description,
      'image': image,
      'category': category
    });
    return ProductModel.fromJson(data);
  }
}

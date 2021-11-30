// ignore: import_of_legacy_library_into_null_safe
import 'package:http/http.dart' as http;
import 'package:practice/screens/gallery/Product.dart';

class Network {
  static var client = http.Client();

  static Future<List<Product>?> fetchProducts() async {
    var response =
        await client.get('https://jsonplaceholder.typicode.com/photos');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      //show error message
      return null;
    }
  }
}

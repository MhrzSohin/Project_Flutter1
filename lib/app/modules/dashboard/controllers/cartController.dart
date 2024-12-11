import 'package:get/get.dart';
import 'package:flutterproject1/app/modules/dashboard/controllers/dataModel.dart'; // Ensure correct import

class CartController extends GetxController {
  // Cart items list
  var cartItems = <FoodItem>[].obs;

  // Add item to cart
  void addToCart(FoodItem item) {
    cartItems.add(item);
  }

  // Get all items in cart
  List<FoodItem> get cart => cartItems;
}

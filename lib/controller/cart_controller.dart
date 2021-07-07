import 'package:e_commerce_ui/model/product_model.dart';
import 'package:flutter/foundation.dart';

class CartController extends ChangeNotifier{
List<Product> cartItems =[];



  double deliveryFee(subtotal) {
    if (subtotal >= 500) {
      return 0.0;
    } else {
      return 100;
    }
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 500) {
      return 'You have Free Delivery';
    } else {
      double missing = 500.0 - subtotal;
      return 'Add Rs. ${missing.toStringAsFixed(2)} for Free Delivery';
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subtotal);
  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);
double subtotal=0;
 void calculateTotal() {
    subtotal = 0;
    cartItems.forEach((f) {
      subtotal += f.price * f.qty;
    });
  }


void removeCard(index) {
    cartItems.removeAt(index);
    print(index);
    notifyListeners();
  }
  void removeProduct(product) {
    int index = cartItems.indexWhere((i) => i.id == product.id);
    cartItems[index].qty = 1;
    cartItems.removeWhere((item) => item.id == product.id);
    calculateTotal();
    notifyListeners();
  }

void updateProduct(product, qty) {
    int index = cartItems.indexWhere((i) => i.id == product.id);
    cartItems[index].qty = qty;
    if (cartItems[index].qty == 0)
      removeProduct(product);
      calculateTotal();
    notifyListeners();
  }
   void addProduct(product) {
    int index = cartItems.indexWhere((i) => i.id == product.id);
    if (index != -1)
      updateProduct(product, product.qty + 1);
    else {
      cartItems.add(product);
      calculateTotal();
      notifyListeners();
    }
  }
}
import 'package:e_commerce_ui/model/models.dart';
import 'package:flutter/foundation.dart';

class WishlistController extends ChangeNotifier {
  var wishlist = <Product>[];

  void addProduct(product) {
    int index = wishlist.indexWhere((i) => i.id == product.id);
    print(index);
    if (index != -1)
      updateProduct(product, product.qty + 1);
    else {
      wishlist.add(product);
      notifyListeners();
    }
  }
  void updateProduct(product, qty) {
    int index = wishlist.indexWhere((i) => i.id == product.id);
    wishlist[index].qty = qty;
  }

  void removeProduct(Product product){
    wishlist.removeWhere((item) => item.id==product.id);
    notifyListeners();
  }
}
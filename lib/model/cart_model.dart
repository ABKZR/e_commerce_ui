import 'package:e_commerce_ui/model/models.dart';
import 'package:equatable/equatable.dart';

class Cart extends Equatable {
  Cart();

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

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

  String get subtotalString => subtotal.toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subtotal);
  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);

  static List<Product> products = [
    Product(
        name: "Soft Drink 1",
        category: 'Soft Drink',
        imageUrl:
            'https://static01.nyt.com/images/2021/05/16/multimedia/16ah-mintdrinks/16ah-mintdrinks-mobileMasterAt3x.jpg',
        price: 30.0,
        isRecommended: true,
        isPopular: true),
    Product(
        name: "Soft Drink 2",
        category: 'Soft Drink',
        imageUrl:
            'https://www.bevindustry.com/ext/resources/2012/2012_April/BI0412_SpecialReport_DietMountainDew_Can_slide.jpg?t=1333552253&width=900',
        price: 40.0,
        isRecommended: true,
        isPopular: false),
    Product(
        name: "Soft Drink 3",
        category: 'Soft Drink',
        imageUrl:
            'https://ik.imagekit.io/pimberly/595e406f0f15f30010780448/tr:w-1000,h-1000,cm-pad_resize/696d6cec/5d70c6b06cb2114d580001de.jpg?product_name=Coca-Cola-Soft-Drink-330ml-Can-(Pack-of-24)-402002.jpg',
        price: 50.0,
        isRecommended: false,
        isPopular: true),
  ];

  @override
  List<Object?> get props => [];
}

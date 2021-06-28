import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Soft Drink',
        imageUrl:
            'https://cdn-a.william-reed.com/var/wrbm_gb_food_pharma/storage/images/publications/food-beverage-nutrition/foodnavigator-asia.com/article/2018/03/29/soft-drink-health-concerns-not-yet-trickled-down-into-social-media-users-mentions-of-brands/7819019-1-eng-GB/Soft-drink-health-concerns-not-yet-trickled-down-into-social-media-users-mentions-of-brands.jpg'),
    Category(
        name: 'Smoothies',
        imageUrl:
            'https://media.istockphoto.com/photos/fresh-homemade-fruit-smothies-picture-id658224182?k=6&m=658224182&s=170667a&w=0&h=CWmxykFoOHSwlmbCxW3pUw9hD6JqVT9laCa3vMMt6Ks='),
    Category(
        name: 'Water',
        imageUrl:
            'https://api.hub.jhu.edu/factory/sites/default/files/styles/landscape/public/drink-more-water-hub.jpg?itok=0rA6JsgA')
  ];
}

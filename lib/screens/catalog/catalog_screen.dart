import 'package:e_commerce_ui/model/category_model.dart';
import 'package:e_commerce_ui/model/models.dart';
import 'package:e_commerce_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(category: category));
  }

  final Category category;
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products.where((product) => product.category == category.name).toList();
    return Scaffold(
        appBar: CustomAppbar(
          title: category.name,
        ),
        bottomNavigationBar: CustomNavigationBar(),
        body: GridView.builder(
            itemCount: categoryProducts.length,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.15),
            itemBuilder: (BuildContext context, index) {
              return Center(
                  child: ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.2,
              ));
            })

        //ProductCard(product: Product.products[0]),
        );
  }
}

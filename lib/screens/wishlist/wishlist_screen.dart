import 'package:e_commerce_ui/controller/wishlist_controller.dart';
import 'package:e_commerce_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wish';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "WishlistScreen",
      ),
      bottomNavigationBar: CustomNavigationBar(),
      body: Consumer<WishlistController>(
        builder: (context, data, child)=>
        GridView.builder(
            itemCount: data.wishlist.length,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, childAspectRatio: 2.4),
            itemBuilder: (BuildContext context, index) {
              return Center(
                  child: ProductCard(
                product: data.wishlist[index],
                widthFactor: 1.1,
                leftPosition: 100,
                isWishList: true,
              ),);
            }),
      ),
    );
  }
}

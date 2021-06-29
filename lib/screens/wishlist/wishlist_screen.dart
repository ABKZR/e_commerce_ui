import 'package:e_commerce_ui/blocs/wishlist/wishlist_bloc.dart';
import 'package:e_commerce_ui/model/models.dart';
import 'package:e_commerce_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      // body: BlocBuilder<WishlistBloc, WishlistState>(
      //   builder: (context, state) {
      //     if (state is WishlistLoading) {
      //       return Center(
      //         child: CircularProgressIndicator(),
      //       );
            
      //     }
          
      //     if (state is WishlistLoaded) {
          body:  GridView.builder(
              
                itemCount: Product.products.length,
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 2.4),
                itemBuilder: (BuildContext context, index) {
                  return Center(
                      child: ProductCard(
                    product: Product.products[index],
                    widthFactor: 1.1,
                    leftPosition: 100,
                    isWishList: true,
                  ));
                }),
        //   } else {
        //     return Text("Something went wrong");
        //   }
        // },
    
    );
  }
}


import 'package:e_commerce_ui/controller/cart_controller.dart';
import 'package:e_commerce_ui/model/models.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartProductCard extends StatelessWidget {
  final Product product;
 final int index;

  const CartProductCard({Key? key, required this.product,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(
        children: [
          Image.network(
            product.imageUrl,
            height: 80,
            width: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  '${product.price}',
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
          ),
          Consumer<CartController>(
            builder: (context,cart,child)=>
             Row(
              children: [
                IconButton(onPressed: (){
                  cart.updateProduct(product, product.qty-1);
                }, icon: Icon(Icons.remove_circle)),
                Text(cart.cartItems[index].qty.toString(),style: Theme.of(context).textTheme.headline5,),
                IconButton(onPressed: (){
                  cart.updateProduct(product, product.qty+1);
                }, icon: Icon(Icons.add_circle)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

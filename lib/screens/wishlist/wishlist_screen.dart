import 'package:e_commerce_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
static const String routeName='/wish';

static Route route(){
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (_)=>WishlistScreen());
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "WishlistScreen",),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

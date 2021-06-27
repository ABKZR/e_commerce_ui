import 'package:e_commerce_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
static const String routeName='/product';

static Route route(){
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (_)=>ProductScreen());
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "Product Screen",),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

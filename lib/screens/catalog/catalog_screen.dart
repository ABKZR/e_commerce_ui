import 'package:e_commerce_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
static const String routeName='/catalog';

static Route route(){
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (_)=>CatalogScreen());
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "CatalogScreen",),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_ui/model/category_model.dart';
import 'package:e_commerce_ui/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "HomeScreen",
      ),
      bottomNavigationBar: CustomNavigationBar(),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 0.9,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: Category.categories
            .map((e) => HeroCarouselCard(
                  category: e,
                ))
            .toList(),
      )),
    );
  }
}

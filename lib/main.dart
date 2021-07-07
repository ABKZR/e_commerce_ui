import 'package:e_commerce_ui/config/app_router.dart';
import 'package:e_commerce_ui/config/theme.dart';
import 'package:e_commerce_ui/controller/wishlist_controller.dart';
import 'package:e_commerce_ui/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (_)=>WishlistController(),
      child: MaterialApp(
          theme: theme(),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: HomeScreen.routeName,
          debugShowCheckedModeBanner: false,
      ),
    );
  }
}

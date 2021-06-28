import 'package:e_commerce_ui/blocs/wishlist/wishlist_bloc.dart';
import 'package:e_commerce_ui/config/app_router.dart';
import 'package:e_commerce_ui/config/theme.dart';
import 'package:e_commerce_ui/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WishlistBloc()
            ..add(
              StartWishlist(),
            ),
        ),
      ],
      child: MaterialApp(
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

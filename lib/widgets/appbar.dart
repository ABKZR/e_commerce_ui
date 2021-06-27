import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget{
  const CustomAppbar({
    Key? key, required this.title
  }) : super(key: key);
final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
       iconTheme: IconThemeData(
    color: Colors.black,
  ),
      elevation: 0,
      centerTitle: true,
      actions: [
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/wish');
            },
            icon: Icon(
              Icons.favorite,
              color: Colors.black,
            ))
      ],
      backgroundColor: Colors.transparent,
      title: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}

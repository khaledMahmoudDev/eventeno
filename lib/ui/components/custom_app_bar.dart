
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool isHome;
  final String title;
  const CustomAppBar({
    Key key, this.isHome, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: !isHome?GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            Expanded(
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 16,
                )),
            Expanded(
                child: Text(
                  'back',
                  style: TextStyle(fontSize: 11),
                ))
          ],
        ),
      ):Text(''),
      centerTitle: true,
      title: Text(title),
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.dehaze_rounded),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

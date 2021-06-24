import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: new BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xfff3ba23),
              const Color(0xffE75E57),
            ],
          ),
        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                child: Image.asset(
              'assets/images/logo.png',
            )),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              leading: Image.asset(
                'assets/images/home.png',
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left:45 ),
              child: Divider(height: 1,color: Colors.white,),
            ),
            ListTile(
              title: Text(
                'About Us',
                style: TextStyle(color: Colors.white),
              ),
              leading: Image.asset(
                'assets/images/info.png',
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left:45 ),
              child: Divider(height: 1,color: Colors.white,),
            ),
            ListTile(
              title: Text(
                'Ticket log',
                style: TextStyle(color: Colors.white),
              ),
              leading: Image.asset(
                'assets/images/search.png',
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left:45 ),
              child: Divider(height: 1,color: Colors.white,),
            ),
            ListTile(
              title: Text(
                'Log Out',
                style: TextStyle(color: Colors.white),
              ),
              leading: Image.asset(
                'assets/images/logout.png',
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left:45 ),
              child: Divider(height: 1,color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}

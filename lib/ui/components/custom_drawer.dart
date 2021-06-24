import 'package:eventeno/ui/screens/auth/login_screen.dart';
import 'package:eventeno/ui/screens/home/home_screen.dart';
import 'package:eventeno/ui/screens/ticket_log/ticket_log_screen.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final String currentPage;

  const CustomDrawer({
    Key key,
    @required this.currentPage,
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
                if (currentPage != 'home') {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) => false);
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
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
              padding: const EdgeInsets.only(left: 45),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Ticket log',
                style: TextStyle(color: Colors.white),
              ),
              leading: Image.asset(
                'assets/images/search.png',
              ),
              onTap: () {
                if (currentPage != 'log') {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => TicketLogScreen()));
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                'Log Out',
                style: TextStyle(color: Colors.white),
              ),
              leading: Image.asset(
                'assets/images/logout.png',
              ),
              onTap: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

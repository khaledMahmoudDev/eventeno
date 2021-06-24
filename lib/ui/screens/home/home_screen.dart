import 'package:eventeno/ui/components/custom_app_bar.dart';
import 'package:eventeno/ui/components/custom_drawer.dart';
import 'package:eventeno/ui/screens/home/home_components/home_body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isHome: true,title: 'Home',),
      endDrawer: CustomDrawer(currentPage: 'home',),
      body: HomeBody(),
    );
  }
}

import 'package:eventeno/view_models/status_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'constants/colors.dart';
import 'ui/screens/auth/login_screen.dart';
import 'view_models/event_viewmodel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (_) => EventsViewModel()),
        Provider(create: (_) => TicketStatusViewModel())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Eventeno',
        theme: ThemeData(
          appBarTheme: AppBarTheme(color: kPrimaryColor),
          primarySwatch: Colors.red,
        ),
        home: LoginScreen(),
      ),
    );
  }
}

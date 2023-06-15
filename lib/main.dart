import 'package:flutter/material.dart';
import 'package:tokoramen/launcher.dart';
import 'package:tokoramen/users/landingpage.dart' as users;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          // primarySwatch: Color.fromRGBO(110, 0, 5, 1),
        ),
        home: LauncherPage(),
        routes: <String, WidgetBuilder>{
          '/landingusers': (BuildContext context) => users.LandingPage(),

          '/keranjangusers': (BuildContext context) =>
              users.LandingPage(nav: '2'),

          // '/signup' : (BuildContext context) => new SignupPage(),
          // '/forgot' : (BuildContext context) => new ForgotPage(),
        });
  }
}

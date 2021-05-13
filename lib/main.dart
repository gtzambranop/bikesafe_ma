import 'package:bikesafe_mobile/screens/home/home_screen.dart';
import 'package:bikesafe_mobile/screens/profile/profile_screen.dart';
import 'package:bikesafe_mobile/screens/search/search_screen.dart';
import 'package:bikesafe_mobile/utilities/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HomeScreen.routeName: (context) => HomeScreen(),
    ProfileScreen.routeName: (context) => ProfileScreen(),
    SearchScreen.routeName: (context) => SearchScreen(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bikesafe',
      theme: AwesomeTheme.awesomeTheme,
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}

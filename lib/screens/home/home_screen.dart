import 'package:flutter/material.dart';
import '../../widgets/tatiana/nav_bar.dart';
import '../../widgets/tatiana/enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(selectedMenu: MenuState.home),
    );
  }
}

import 'package:flutter/material.dart';
import '../../widgets/tatiana/nav_bar.dart';
import '../../widgets/tatiana/enums.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "/search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(selectedMenu: MenuState.search),
    );
  }
}

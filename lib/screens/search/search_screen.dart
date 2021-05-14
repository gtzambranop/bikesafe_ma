import 'package:flutter/material.dart';
import 'package:bikesafe_mobile/widgets/tatiana/nav_bar.dart';
import 'package:bikesafe_mobile/widgets/tatiana/enums.dart';
import 'components/search_form.dart';

class SearchScreen extends StatelessWidget {
  static String routeName = "/search";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SearchForm(),
          ],
        ),
      )),
      bottomNavigationBar: NavBar(selectedMenu: MenuState.search),
    );
  }
}

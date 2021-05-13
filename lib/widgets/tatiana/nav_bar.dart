import 'package:flutter/material.dart';
import 'package:bikesafe_mobile/screens/home/home_screen.dart';
import 'package:bikesafe_mobile/screens/profile/profile_screen.dart';
import 'package:bikesafe_mobile/screens/search/search_screen.dart';
import './enums.dart';
import './constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(HomeScreen.routeName),
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: MenuState.search == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(SearchScreen.routeName),
              ),
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.of(context).pushNamed(ProfileScreen.routeName),
              ),
            ],
          )),
    );
  }
}

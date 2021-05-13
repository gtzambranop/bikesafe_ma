import 'package:flutter/material.dart';
import '../../widgets/tatiana/nav_bar.dart';
import '../../widgets/tatiana/enums.dart';
import '../../widgets/tatiana/default_button.dart';
import './components/profile_pic.dart';
import 'package:bikesafe_mobile/widgets/normal_text.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            ProfilePic(rad: 80),
            Spacer(),
            NormalText("Nombre: Juanito Alcachofa"),
            NormalText("Celular: 3107803387"),
            NormalText("Código: 20983764"),
            Spacer(),
            DefaultButton(
              text: "Actualizar Código",
              press: () {},
            ),
            Spacer(),
          ],
        ),
      )),
      bottomNavigationBar: NavBar(selectedMenu: MenuState.profile),
    );
  }
}

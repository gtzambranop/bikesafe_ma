import 'package:bikesafe_mobile/widgets/tatiana/default_button.dart';
import 'package:flutter/material.dart';
import '../../widgets/tatiana/nav_bar.dart';
import '../../widgets/tatiana/enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
        child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            ChoiceChip(
              avatar: Icon(Icons.local_phone),
              padding: EdgeInsets.all(10.0),
              label: Text('Llámame'),
              selected: true,
              onSelected: (bool selected) {
                setState(() {});
                },
            ),
            SizedBox(height: 10),
            ChoiceChip(
              avatar: Icon(Icons.remove_red_eye),
              padding: EdgeInsets.all(10.0),
              label: Text('Me están siguiendo'),
              selected: true,
              onSelected: (bool selected) {
                setState(() {});
                },
            ),
            SizedBox(height: 10),
            ChoiceChip(
              avatar: Icon(Icons.person),
              padding: EdgeInsets.all(10.0),
              label: Text('Sujeto extraño'),
              selected: true,
              onSelected: (bool selected) {
                setState(() {});
                },
            ),
            SizedBox(height: 10),
            ChoiceChip(
              avatar: Icon(Icons.location_on),
              padding: EdgeInsets.all(10.0),
              label: Text('Búscame'),
              selected: true,
              onSelected: (bool selected) {
                setState(() {});
                },
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                
                labelText: 'Descripción'
            )
            ),
            SizedBox(height: 10),
            DefaultButton(
              text: "Enviar Alerta",
              press: () {},
            ),
            SizedBox(height: 10),
            
            ],      
        ),
        

      ),
    ),
      bottomNavigationBar: NavBar(selectedMenu: MenuState.home),
    );
  }

  void setState(Null Function() param0) {}
}
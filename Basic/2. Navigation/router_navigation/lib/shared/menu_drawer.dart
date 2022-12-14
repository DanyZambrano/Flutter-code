// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import '../screens/bmi_screen.dart';
import '../screens/intro_screen.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List<Widget> buildMenuItems(BuildContext context) {
    final List<String> menuTitles = [
      'Home',
      'BMI',
      'Weather',
      'Training'
    ];
    List<Widget> menuItems = [];
    menuItems.add(DrawerHeader(
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Text('Globo', style: TextStyle(color: Colors.white, fontSize: 28))));
    menuTitles.forEach((String element) {
      Widget screen = Container();
      menuItems.add(ListTile(
          title: Text(element, style: TextStyle(fontSize: 18)),
          onTap: () {
            switch (element) {
              case 'Home':
                screen = IntroScreen();
                break;
              case 'BMI':
                screen = BmiScreen();
                break;
            }
            Navigator.of(context).pop();
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
          }));
    });
    return menuItems;
  }
}

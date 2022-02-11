import 'package:flutter/material.dart';
import 'package:moneyheist_web/utilities/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      // for responsive design
      mobile: MobileNavBar(),
      desktop: DesktopNavBar(),
    );
  }
}

Widget MobileNavBar() {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      child: Row(
        children: [
          const Icon(Icons.menu),
          navLogo(),
        ],
      ));
}

Widget DesktopNavBar() {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Icon(Icons.menu),
        Row(
          children: [
            navButton('Home'),
            navButton('About'),
            navButton('Cast'),
            navButton('Photos'),
            navButton('Teaser'),
          ],
        ),
        navLogo()
      ],
    ),
  );
}

Widget navLogo() {
  return Container(
    height: 60,
    width: 159,
    child: Image.asset('images/netflix.png'),
  );
}

Widget navButton(String text) {
  return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 4.0,
      ),
      child: TextButton(
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
                color: text == 'Home'
                    ? const Color.fromARGB(255, 255, 0, 0)
                    : Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0),
          )));
}

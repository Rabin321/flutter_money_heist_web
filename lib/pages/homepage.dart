import 'package:flutter/material.dart';

import '../widgets/maincontent.dart';
import '../widgets/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 90, 4, 4),
                  Color(0xff000000),
                ]),
            color: Colors.grey,
            image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
                opacity: 0.3),
          ),
          child: Column(
            children: const [
              NavBar(),
              SizedBox(height: 20),
              MainContent(),
            ],
          ),
        ),
      ),
    );
  }
}

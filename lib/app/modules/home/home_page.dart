import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        children: <Widget>[
          ConstrainedBox(
            child: Container(
              color: Colors.white,
              child: Image.asset(
                'assets/images/logo_horizontal.png',
                fit: BoxFit.fill,
                scale: 1,
              ),
              //child: ,
            ),
            constraints: BoxConstraints(
              minWidth: 200,
              maxWidth: 450,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

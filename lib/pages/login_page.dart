import 'package:flutter/material.dart';
import 'package:flutter_api_rest/Utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'login';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double purppleSize = responsive.wp(75);
    final double orangeSize = responsive.wp(55);
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: responsive.width,
            height: responsive.height,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children:  [
                Positioned(
                  right: -purppleSize* 0.1,
                  top: -purppleSize* 0.3,
                  child: Circle(
                    size: purppleSize,
                    colors: [
                        Colors.purpleAccent,
                        Colors.purple,
                      ],
                    ),
                ),
                Positioned(
                  left: -orangeSize* 0.1,
                  top: -orangeSize* 0.3,
                  child: Circle(
                    size: orangeSize,
                    colors: [
                        Colors.orange,
                        Colors.deepOrangeAccent,
                      ],
                    ),
                ),
                  Positioned(
                  top: purppleSize * 0.5,
                  child: Column(
                    children: [
                      IconContainer(
                        size: responsive.wp(20),
                      ),
                      SizedBox(
                        height: responsive.dp(3),
                      ),
                      Text('Hola\nBienvenido', 
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: responsive.dp(2)),),
                    ],
                  ),
                ),
                LoginForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
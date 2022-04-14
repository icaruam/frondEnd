
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_rest/Utils/responsive.dart';
import 'package:flutter_api_rest/widgets/avatar_button.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/register_form.dart';


class RegisterPage extends StatefulWidget {
  static const routeName = 'register';
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  top: -purppleSize* 0.15,
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
                  top: -orangeSize* 0.2,
                  child: Circle(
                    size: orangeSize,
                    colors: [
                        Colors.orange,
                        Colors.deepOrangeAccent,
                      ],
                    ),
                ),
                  Positioned(
                  top: purppleSize * 0.2,
                  child: Column(
                    children: [
                      SizedBox(
                        height: responsive.dp(3),
                      ),
                      Text('Hola\nBienvenido', 
                      textAlign: TextAlign.center,
                      
                      style: TextStyle(
                        fontSize: responsive.dp(3),color: Colors.white),
                        ),
                        SizedBox(height: responsive.dp(4),),
                        AvatarButton(
                          imageSize: responsive.wp(28),
                        ),
                    ],
                  ),
                ),
                RegisterForm(),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SafeArea(
                    child: CupertinoButton(child: Icon(Icons.arrow_back),
                    color: Colors.black26,
                    padding: EdgeInsets.all(10),
                    borderRadius: BorderRadius.circular(30),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                   ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
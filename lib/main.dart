import 'package:flutter/material.dart';
import 'package:flutter_api_rest/pages/login_page.dart';
import 'package:flutter/services.dart';
import 'package:flutter_api_rest/pages/resgister_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    return MaterialApp(
     debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
      routes: {RegisterPage.routeName:(_)=>RegisterPage(),
          LoginPage.routeName:(_)=>LoginPage(),
        },
    );
  }
} 


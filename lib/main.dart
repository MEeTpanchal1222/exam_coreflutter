import 'package:exam_coreflutter/productscteen.dart';
import 'package:exam_coreflutter/productview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'cartscreen.dart';
import 'homescreen.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Color(0xFF181A20),
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "sneaker city",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const homescreen(),
        '/home': (context) => const Productscreen(),
        '/view': (context) => const Productview(index: 0,),
        '/addcart':(context) => const CartScreen(),
      },

    );
  }
}
import 'package:flutter/material.dart';

class Productview extends StatefulWidget {
  final int index;

  const Productview({Key? key, required this.index}) : super(key: key);

  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,

          body: SingleChildScrollView(),
        ),
      ),
    );
  }
}

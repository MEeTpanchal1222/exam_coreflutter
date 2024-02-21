import 'package:exam_coreflutter/uiteals/list.dart';
import 'package:flutter/material.dart';

class Productview extends StatefulWidget {
  final int index;

  const Productview({Key? key, required this.index}) : super(key: key);

  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context)
  {
    var product = ModalRoute.of(context)!.settings.arguments as Map;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,

          body: SingleChildScrollView(
            child: Column(
              children: [
              SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 40,),
                  InkWell(  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, '/');
                    });
                  },
                    child: Image(image:AssetImage('assest/homescreen/Group 3.png')),),
                  SizedBox(width: 490,),
                  Text('New Arivales',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                  SizedBox(width: 30,),
                  Text('Men',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                  SizedBox(width: 30,),
                  Text('Women',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                  SizedBox(width: 30,),
                  Text('kides',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                  SizedBox(width: 490,),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/addcart');
                  },child: Image(image:AssetImage('assest/homescreen/icons/fi_shopping-cart.png'))),
                  SizedBox(width: 20,),
                  Image(image:AssetImage('assest/homescreen/icons/Vector.png')),
                  SizedBox(width: 20,),
                  Image(image:AssetImage('assest/homescreen/icons/fi_user.png')),
                ],
              ),
            ),
            Divider(height: 0.5,thickness: 0.5,color: Colors.black87),
                Container(
                  height: height,
                  width: width,
                  // color: Colors.yellow,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            height: height,
                            width: width*0.7,
                            color: Color(0xFFF5F5F5),
                            child:Container(
                              margin: EdgeInsets.fromLTRB(50, 100, 50, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(product['name'],style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.w600
                                      ),),
                                      Icon(
                                          Icons.favorite_border_rounded
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Text(
                                    '${product['price']}',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),),

                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 250),
                                    height: height*0.5,
                                    width: width*0.5,
                                    decoration: BoxDecoration(
                                      // color: Colors.blueAccent,

                                    ),
                                    child: Image.asset(product['img'],fit: BoxFit.cover,),
                                  )

                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 20, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(height: 20,),
                            Container(
                              // color: Colors.pink,
                              width: width*0.21,
                              child: Text("The Jordan Delta 2 offers a fresh, fearless take on the features you want: durability, comfort and an attitude that's Jordan to the core. We updated design lines and swapped out some components. The 2 still has that clashing combination of supportive and space age-like materials, with lots of different textures and heavy stitching to create a look that's both adventurous and iconic.",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14
                                ),
                                maxLines: 8,),
                            ),

                            SizedBox(height: 30,),

                            Container(
                              height: 2,
                              width: 380,
                              color: Colors.black,
                            ),
                            // Divider(
                            //   height: 100,
                            //   color: Colors.blueAccent,
                            //   thickness: 10,
                            // ),
                            SizedBox(height: 30,),


                            Container(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Text('Sized',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  ),)),

                            SizedBox(height: 20,),

                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                              child: Column(
                                children: [
                                  Row(
                                    children: List.generate(5, (index) => Boxes(num)),
                                  ),
                                  Row(
                                    children: List.generate(5, (index) => Boxes(num)),
                                  ),
                                  Row(
                                    children: List.generate(5, (index) => Boxes(num)),
                                  ),
                                  Row(
                                    children: List.generate(5, (index) => Boxes(num)),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 20,),

                            Container(
                              height: 2,
                              width: 380,
                              color: Colors.black,
                            ),

                            SizedBox(height: 20,),

                            InkWell(
                              onTap: () {
                                setState(() {
                                  cart.add(product );
                                });

                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: height*0.06,
                                width: width*0.07,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.all(Radius.circular(5)),
                                ),
                                child: Text('Add to cart',style: TextStyle(
                                    color: Colors.white
                                ),),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),

              ]
          ),
        ),
      ),
      ),
    );
  }
}



  Widget Boxes(int num) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(8),
          border: Border.all(color: Colors.grey),
          color: Colors.white),
      child: Text('$num'),
    );
  }
int num = 35;

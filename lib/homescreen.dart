
import 'package:exam_coreflutter/uiteals/color.dart';
import 'package:flutter/material.dart';
class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();

}
class _homescreenState extends State<homescreen> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        theme: ThemeData(

          useMaterial3: true,
        ),
        home: SafeArea(child:
        Scaffold(
          backgroundColor:Colors.white,


          body: SingleChildScrollView(
            child: Column(
            children: [
             Row(
               children: [
                 SizedBox(width: 40,),
                     Image(image:AssetImage('assest/homescreen/Group 3.png')),
                 SizedBox(width: 190,),
                 Text('New Arivales',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                 SizedBox(width: 10,),
                 Text('Men',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                 SizedBox(width: 10,),
                 Text('Women',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                 SizedBox(width: 10,),
                 Text('kides',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                 SizedBox(width: 140,),
                 Image(image:AssetImage('assest/homescreen/icons/fi_shopping-cart.png')),
                 SizedBox(width: 20,),
                 Image(image:AssetImage('assest/homescreen/icons/Vector.png')),
                 SizedBox(width: 20,),
                 Image(image:AssetImage('assest/homescreen/icons/fi_user.png')),
                        ],
                     ),
              Divider(height: 0.5,thickness: 0.5,color: Colors.black87),
              SizedBox(height: 100,),
              Row(
                  children: [
                    SizedBox(width: 110,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                    Text('Puma',style: TextStyle(fontSize: 50,color: Colors.black87,fontWeight: FontWeight.bold),),
                  Text('Runiing SX\n',style: TextStyle(fontSize: 50,color: Colors.black87,fontWeight: FontWeight.bold,),),
                         // SizedBox(height: 30,width: 10,),
                         Image(image: AssetImage('assest/homescreen/textd1.png'),width: 250,),
                          SizedBox(height: 20,),
                          Text('62,000 RwF',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,width: 80,
                            decoration: BoxDecoration(
                              color: colormeet,
                            ),
                            child: Center(child: Text('Add to cart',style: TextStyle(color: Colors.white,fontSize: 10),)),
                          )

                ]
             ),
               SizedBox(width: 300,),
                Column(
                children: [
                  Container(
                    height: 350,
                    width: 300,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0XFFf1eaef),
                    ),
                    child: Image(image: AssetImage('assest/homescreen/Rectangle 4.png'),height: 350,width: 300,) ,
                  ),

                ],
              ),
              ],
            ),
              Divider(height: 1,thickness: 1.3,color: Colors.grey),
              SizedBox(height: 20,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(width: 110,),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('All New Arivales',style: TextStyle(fontSize: 25,color: Colors.black87,fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Row(
                              children: [
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 19.png")),
                                      Text('addida beluga'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 25.png")),
                                      Text('Nike zoom'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 24.png")),
                                      Text('NIke air jorden XT'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 26 (1).png")),
                                      Text('Nike wobbler'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 19.png")),
                                      Text('addida beluga'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 25.png")),
                                      Text('Nike zoom'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 24.png")),
                                      Text('NIke air jorden XT'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),
                                Container(
                                  height: 400,
                                  width: 250,
                                  child: Column(
                                    children: [
                                      Image(image: AssetImage("assest/homescreen/Rectangle 26 (1).png")),
                                      Text('Nike wobbler'),
                                      Text('35,000RWF')
                                    ],
                                  ),

                                ),

                              ],
                            ),
                        ]
                    ),
                    SizedBox(width: 100,),
                  ],
                ),
              ),
              Container(
                child: Image.asset('assest/homescreen/Group 35.png'),
              ),
              Container(
                child: Image.asset('assest/homescreen/Group 30.png'),
              ),
              SizedBox(height: 100,),
              Divider(height: 1,thickness: 1.3,color: Colors.black87),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Image.asset('assest/homescreen/Group 29.png'),
                ),
              )

            ],
            ),
          )
                ),
                ),
    );
  }
}
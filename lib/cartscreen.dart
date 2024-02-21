import 'package:exam_coreflutter/uiteals/list.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int producttotal() {
    int total = 0;

    for(var item in cart)
    {
      int price =item['price'];
      total += (price * count) ;
    }
    return total;
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
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

          body: SingleChildScrollView(child: Column(
            children: [
            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(width: 40,),
                Image(image:AssetImage('assest/homescreen/Group 3.png')),
                SizedBox(width: 490,),
                InkWell(  onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, '/home');
                  });
                },
                    child: Text('New Arivales',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),)),
                SizedBox(width: 30,),
                Text('Men',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                SizedBox(width: 30,),
                Text('Women',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                SizedBox(width: 30,),
                Text('kides',style: TextStyle(fontSize: 15,color: Colors.black87,fontWeight: FontWeight.bold),),
                SizedBox(width: 490,),
                Image(image:AssetImage('assest/homescreen/icons/fi_shopping-cart.png')),
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
                          child:Container(
                            margin: EdgeInsets.fromLTRB(50, 50, 50, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Your Shopping cart',style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600
                                ), ),

                                Column(
                                  children: List.generate(cart.length, (index) => Column(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(20),
                                        margin: EdgeInsets.symmetric(vertical: 20),
                                        height: height*0.15,
                                        width: width,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFF5F5F5)
                                        ),
                                        child: Row(

                                          children: [
                                            Container(
                                              height: height*0.1,
                                              width: width*0.05,
                                              decoration: BoxDecoration(
                                                  color: Colors.white
                                              ),
                                              child: Image.asset(cart[index]['img'],fit: BoxFit.cover,),
                                            ),

                                            SizedBox(width: 50,),

                                            Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(cart[index]['name']),
                                                Text('${cart[index]['price']}'),
                                              ],
                                            ),

                                            SizedBox(width: 350,),

                                            Row(
                                              children: [

                                                InkWell(
                                                    onTap: () {
                                                      if(count > 1)
                                                      {
                                                        setState(() {
                                                          count--;
                                                        });
                                                      }
                                                    },
                                                    child: Icon(Icons.remove_circle)),

                                                Container(
                                                  alignment: Alignment.center,
                                                  height: 40,
                                                  width: 40,
                                                  margin: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadiusDirectional.circular(8),
                                                      border: Border.all(color: Colors.grey),
                                                      color: Colors.white),
                                                  child: Text('$count'),
                                                ),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        count++;
                                                      });
                                                    },

                                                    child: Icon(Icons.add_circle)),
                                              ],
                                            ),

                                            SizedBox(width: 150,),

                                            InkWell(
                                              onTap: () {
                                                setState(() {
                                                  cart.removeAt(index);
                                                });
                                              },
                                              child: Icon(
                                                Icons.delete,
                                                color: Colors.black,
                                                size: 30,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )),
                                ),

                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 50, 20, 0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Order Summary',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),

                            SizedBox(height: 50,),


                            Row(
                              children: [
                                Text('Sub total',style: TextStyle(
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 200,),
                                Text('${producttotal()} RWF',style: TextStyle(
                                  color: Colors.black,
                                ),),
                              ],
                            ),

                            SizedBox(height: 20,),

                            Row(
                              children: [
                                Text('Delivery fee',style: TextStyle(
                                  color: Colors.black,
                                ),),
                                SizedBox(width: 200,),
                                Text('0 INR free for you',style: TextStyle(
                                  color: Colors.black,
                                ),),
                              ],
                            ),
                            SizedBox(height: 20,),

                            Container(
                              height: 2,
                              width: 380,
                              color: Colors.black,
                            ),

                            SizedBox(height: 20,),

                            Row(
                              children: [
                                SizedBox(width: 262,),
                                Text('${producttotal()} INR',style: TextStyle(
                                  color: Colors.black,
                                ),),
                              ],
                            ),

                            Divider(

                              color: Colors.blueAccent,
                              thickness: 10,
                            ),

                            Container(
                              alignment: Alignment.center,
                              height: height*0.06,
                              width: width*0.1,
                              decoration: BoxDecoration(
                                color: Colors.red,

                              ),
                              child: Text('Proceed for dileverey',style: TextStyle(
                                  color: Colors.white
                              ),),
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
          ),
        ),
      ),
    );
  }
}
int count = 1;
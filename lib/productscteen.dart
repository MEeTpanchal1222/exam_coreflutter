
import 'package:exam_coreflutter/uiteals/list.dart';
import 'package:flutter/material.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  RangeValues values = const RangeValues(10000, 50000);
  List<String> selectedBrands = [];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List filteredProducts = productList.where((product) {
      int price = product['price'];
      String brand = product['brand'];

      bool priceFilter = price >= values.start && price <= values.end;
      bool brandFilter =
          selectedBrands.isEmpty || selectedBrands.contains(brand);

      return price >= values.start && price <= values.end;
    }).toList();
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
                  Image(image:AssetImage('assest/homescreen/icons/fi_shopping-cart.png')),
                  SizedBox(width: 20,),
                  Image(image:AssetImage('assest/homescreen/icons/Vector.png')),
                  SizedBox(width: 20,),
                  Image(image:AssetImage('assest/homescreen/icons/fi_user.png')),
                ],
              ),
            ),
                Divider(height: 0.5,thickness: 0.5,color: Colors.black87),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              height: height * 3,
                              width: width * 0.25,
                              // color: Colors.blueAccent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(horizontal: 30),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Brand',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 30,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin:
                                              EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(2)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Nike'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin:
                                              EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(2)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Jordon'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin:
                                              EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(2)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Adiddas'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin:
                                              EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(2)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Fila'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin:
                                              EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(2)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Gucci'),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              margin:
                                              EdgeInsets.fromLTRB(10, 0, 0, 0),
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(
                                                      Radius.circular(2)),
                                                  border: Border.all(
                                                    color: Colors.grey,
                                                    width: 1,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text('Balenciaga'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 50,
                                    color: Colors.grey,
                                  ),
                                  Padding(
                                    padding:
                                    const EdgeInsets.symmetric(horizontal: 30),
                                    child: Row(
                                      children: [
                                        Text(
                                          'Price range',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  RangeSlider(
                                    min: 10000,
                                    max: 100000,
                                    divisions: 1000,
                                    values: values,
                                    onChanged: (RangeValues newValues) {
                                      setState(() {
                                        values = newValues;
                                      });
                                    },
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        '${values.start} INR',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '${values.end} INR',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 80,
                                    color: Colors.grey,
                                  ),

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
                                ],
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(50, 0, 0, 0),
                                  height: height * 3,
                                  width: width * 0.7,
                                  // color: Colors.yellow,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Only Filtered',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 2,
                                          fontSize: 24,
                                        ),
                                      ),
                                      SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          children: List.generate(
                                            filteredProducts.length,
                                                (index) => GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pushNamed(
                                                    '/third',
                                                    arguments:
                                                    filteredProducts[index]);
                                              },
                                              child: Products(
                                                filteredProducts[index]['img'],
                                                filteredProducts[index]['name'],
                                                filteredProducts[index]['price'],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'The new arrivals',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: 2,
                                          fontSize: 24,
                                        ),
                                      ),
                                      Row(
                                        children: List.generate(
                                            row1.length,
                                                (index) => GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pushNamed(
                                                    '/view',
                                                    arguments: row1[index]);
                                              },
                                              child: Products(
                                                  row1[index]['img'],
                                                  row1[index]['name'],
                                                  row1[index]['price']),
                                            )),
                                      ),
                                      Row(
                                        children: List.generate(
                                            row2.length,
                                                (index) => GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pushNamed(
                                                    '/view',
                                                    arguments: row2[index]);
                                              },
                                              child: Products(
                                                  row2[index]['img'],
                                                  row2[index]['name'],
                                                  row2[index]['price']),
                                            )),
                                      ),
                                      Row(
                                        children: List.generate(
                                            row3.length,
                                                (index) => GestureDetector(
                                              onTap: () {
                                                Navigator.of(context).pushNamed(
                                                    '/view',
                                                    arguments: row3[index]);
                                              },
                                              child: Products(
                                                  row3[index]['img'],
                                                  row3[index]['name'],
                                                  row3[index]['price']),
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
            ],
            ),
          ),
        ),
      ),
    );
  }
}


  Widget Products(String img, String name, int price)
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(0, 20, 30, 30),
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
          ),
          child: Image.asset(img),
        ),
        SizedBox(height: 10),
        Text(
          '$name',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
        Text(
          ' $price INR',
          style: TextStyle(
              color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ],
    );
  }

  Widget Boxes(int nom) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 40,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(8),
          border: Border.all(color: Colors.grey),
          color: Colors.white),
      child: Text('$nom'),
    );
  }

int num = 30;


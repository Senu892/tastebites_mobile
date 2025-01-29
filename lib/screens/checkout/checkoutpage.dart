import 'package:cb016148/widgets/navbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:cb016148/widgets/footer.dart';
import 'package:flutter/material.dart';


class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE5D9),
        title:Text('Checkout'),
        leading: Builder(builder: (BuildContext context){
          return IconButton(onPressed: () {Navigator.pop(context);}, icon: Icon(Icons.chevron_left));
        }),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xffdc6719).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Ionicons.person_circle_outline,
                          size: 60,
                          color: Color(0xffcd9a8f),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Senudi Wijethunga',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 15,
                                color: Color(0xff343129),
                              ),
                            ),
                            Text(
                              'senudiwijethunga@gmail.com',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 12,
                                color: Color(0xff9e9e9e),
                              ),
                            ),
                            Text(
                              '0716531637',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 12,
                                color: Color(0xff9e9e9e),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Stack(clipBehavior: Clip.none, children: [
                    Positioned(
                        top: -60,
                        left: 0,
                        right: 0,
                        child:
                            Image.asset('assets/images/CC.png', height: 150)),
                    Container(
                      padding: EdgeInsets.all(4),
                      width: 400,
                      height: 300,
                      decoration: BoxDecoration(
                        color: Color(0xffdc6719).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Stack(children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          top: 77,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/visa.png', height: 50),
                              Image.asset('assets/images/master.png',
                                  height: 50),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 30,
                          left: 20,
                          child: Container(
                            width: 350,
                            height: 150,
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0.5,
                                              color: Color(0xff777777))),
                                      hintText: "Card Number"),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 0.5,
                                              color: Color(0xff777777))),
                                      hintText: "Cardholder Name"),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 150,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 0.5,
                                                    color: Color(0xff777777))),
                                            hintText: "Exp Date"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Container(
                                      width: 150,
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    width: 0.5,
                                                    color: Color(0xff777777))),
                                            hintText: "CVC"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                  ]),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(25),
                    width: 450,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffdc6719).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Order Summary',
                          style: TextStyle(
                            fontFamily: 'Roboto_SemiCondensed-Regular',
                            fontSize: 15,
                            color: Color(0xffdc6719),
                          ),
                        ),
                        Divider(
                          color: Color(0xffdc6719),
                          thickness: 2,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 430,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 300,
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color:
                                            Color(0xffdc6719).withOpacity(0.1),
                                      ),
                                      child: Image.asset(
                                          'assets/images/japanese_snacks.png',
                                          height: 60),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Japanese Snacks',
                                          style: TextStyle(
                                            fontFamily: 'Roboto_SemiCondensed-Regular',
                                            fontSize: 13,
                                            color: Color(0xff343129),
                                          ),
                                        ),
                                        Text(
                                          '\$50.52 (Monthly subscription)',
                                          style: TextStyle(
                                            fontFamily: 'Roboto_SemiCondensed-Regular',
                                            fontSize: 13,
                                            color: Color(0xff343129),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xffdc6719),
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 13,
                                color: Color(0xff343129),
                              ),
                            ),
                            Text(
                              '\$50.52',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 13,
                                color: Color(0xff343129),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 13,
                                color: Color(0xff343129),
                              ),
                            ),
                            Text(
                              '\$3.00',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 13,
                                color: Color(0xff343129),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Color(0xffdc6719),
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 13,
                                color: Color(0xff343129),
                              ),
                            ),
                            Text(
                              '\$53.52',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 13,
                                color: Color(0xff343129),
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Color(0xffdc6719),
                          thickness: 2,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.all(6.0),
                          decoration: BoxDecoration(
                              color: Color(0xffffc29a),
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            'Purchase',
                            style: TextStyle(
                              fontFamily: 'Roboto_SemiCondensed-Regular',
                              fontSize: 15,
                            ),
                          ))),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(selectedIndex: 2)
    );
  }
}

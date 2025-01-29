import 'package:cb016148/services/screensize.dart';
import 'package:cb016148/widgets/navbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:cb016148/widgets/footer.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE5D9),
        title: Text('Profile'),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.chevron_left));
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
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    width: 400,
                    decoration: BoxDecoration(
                      color: Color(0xffdc6719).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Address',
                              style: TextStyle(
                                fontFamily: 'Roboto_SemiCondensed-Regular',
                                fontSize: 15,
                                color: Color(0xffdc6719),
                              ),
                            ),
                            Text(
                              'No. 04 Rosmead Pl, Colombo 07 (00700)',
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
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    width: 450,
                    height: 400,
                    decoration: BoxDecoration(
                      color: Color(0xffdc6719).withOpacity(0.1),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent Orders',
                          style: TextStyle(
                            fontFamily: 'Roboto_SemiCondensed-Regular',
                            fontSize: 15,
                            color: Color(0xffdc6719),
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          width: 430,
                          decoration: BoxDecoration(
                            color: Color(0xffffc29a),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 50,
                                child: Text(
                                  'Order ID',
                                  style: TextStyle(
                                    fontFamily: 'Roboto_SemiCondensed-Regular',
                                    fontSize: 13,
                                    color: Color(0xff343129),
                                  ),
                                ),
                              ),
                              Container(
                                width: 70,
                                child: Text(
                                  'Placed On',
                                  style: TextStyle(
                                    fontFamily: 'Roboto_SemiCondensed-Regular',
                                    fontSize: 13,
                                    color: Color(0xff343129),
                                  ),
                                ),
                              ),
                              Container(
                                width: 100,
                                child: Text(
                                  'Items',
                                  style: TextStyle(
                                    fontFamily: 'Roboto_SemiCondensed-Regular',
                                    fontSize: 13,
                                    color: Color(0xff343129),
                                  ),
                                ),
                              ),
                              Container(
                                width: 50,
                                child: Text(
                                  'Total',
                                  style: TextStyle(
                                    fontFamily: 'Roboto_SemiCondensed-Regular',
                                    fontSize: 13,
                                    color: Color(0xff343129),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: ScreenSize.screenHeight * 0.35,
                          child: SingleChildScrollView(
                            child: Column(children: [
                              Container(
                                padding: EdgeInsets.all(4),
                                width: 430,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '0003',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Color(0xffdc6719)
                                                  .withOpacity(0.1),
                                            ),
                                            child: Image.asset(
                                                'assets/images/japanese_snacks.png',
                                                height: 40),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                  color: Color(0xff343129),
                                                ),
                                              ),
                                              Text(
                                                'Items',
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
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '\$50.52 (Monthly Subscription)',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xffdc6719),
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                width: 430,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '0003',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Color(0xffdc6719)
                                                  .withOpacity(0.1),
                                            ),
                                            child: Image.asset(
                                                'assets/images/japanese_snacks.png',
                                                height: 40),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                  color: Color(0xff343129),
                                                ),
                                              ),
                                              Text(
                                                'Items',
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
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '\$50.52 (Monthly Subscription)',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xffdc6719),
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                width: 430,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '0003',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Color(0xffdc6719)
                                                  .withOpacity(0.1),
                                            ),
                                            child: Image.asset(
                                                'assets/images/japanese_snacks.png',
                                                height: 40),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                  color: Color(0xff343129),
                                                ),
                                              ),
                                              Text(
                                                'Items',
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
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '\$50.52 (Monthly Subscription)',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xffdc6719),
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
                                width: 430,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '0003',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                         fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              color: Color(0xffdc6719)
                                                  .withOpacity(0.1),
                                            ),
                                            child: Image.asset(
                                                'assets/images/japanese_snacks.png',
                                                height: 40),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily: 'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                  color: Color(0xff343129),
                                                ),
                                              ),
                                              Text(
                                                'Items',
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
                                    Container(
                                      width: 50,
                                      child: Text(
                                        '\$50.52 (Monthly Subscription)',
                                        style: TextStyle(
                                          fontFamily: 'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                          color: Color(0xff343129),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Color(0xffdc6719),
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(selectedIndex: 3),
    );
  }
}

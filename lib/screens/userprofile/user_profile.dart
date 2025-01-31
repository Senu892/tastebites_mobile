import 'package:cb016148/screens/login/login.dart';
import 'package:cb016148/services/screensize.dart';
import 'package:cb016148/widgets/navbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        title: Text('Profile'),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.chevron_left));
        }),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    width: ScreenSize.screenWidth * 0.9,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
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
                    height: 35,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    width: ScreenSize.screenWidth * 0.9,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
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
                                color: Theme.of(context).colorScheme.primary,
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
                    height: 35,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    width: ScreenSize.screenWidth * 0.9,
                    // height: ScreenSize.screenHeight * 0.58,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
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
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.tertiary,
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
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
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
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
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                ),
                                              ),
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Theme.of(context).colorScheme.primary,
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
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
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
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
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                ),
                                              ),
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Theme.of(context).colorScheme.primary,
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
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
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
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
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                ),
                                              ),
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Theme.of(context).colorScheme.primary,
                                thickness: 2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(4),
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      child: Text(
                                        '05.01.2025',
                                        style: TextStyle(
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
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
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
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
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
                                                ),
                                              ),
                                              Text(
                                                'Items',
                                                style: TextStyle(
                                                  fontFamily:
                                                      'Roboto_SemiCondensed-Regular',
                                                  fontSize: 13,
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: Theme.of(context).colorScheme.primary,
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
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    ),
                    child: const Text(
                      'Log Out',
                      style: TextStyle(
                        fontFamily: 'Roboto_SemiCondensed-Regular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(selectedIndex: 3),
    );
  }
}

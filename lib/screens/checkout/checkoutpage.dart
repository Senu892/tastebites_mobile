import 'package:cb016148/services/screensize.dart';
import 'package:cb016148/themes/colors.dart';
import 'package:cb016148/widgets/navbar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          title: Text(
            'Checkout',
            style: TextStyle(),
          ),
          leading: Builder(builder: (BuildContext context) {
            return IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.chevron_left,
                ));
          }),
        ),
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        body: OrientationBuilder(
          builder: (context, orientation) {
            return orientation == Orientation.portrait
                ? _portraitlayout(context)
                : _landscapelayout(context);
          },
        ),
        bottomNavigationBar: NavBar(selectedIndex: 2));
  }

  Widget _portraitlayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
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
                  height: 90,
                ),
                Stack(clipBehavior: Clip.none, children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    width: ScreenSize.screenWidth * 0.9,
                    height: ScreenSize.screenHeight * 0.35,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
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
                            Image.asset('assets/images/master.png', height: 50),
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
                  Positioned(
                      top: -60,
                      left: 0,
                      right: 0,
                      child: Image.asset('assets/images/CC.png', height: 150)),
                ]),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  width: ScreenSize.screenWidth * 0.9,
                  // height: ScreenSize.screenHeight * 0.35,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
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
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
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
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        '\$50.52 (Monthly subscription)',
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
                          ],
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
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
                            ),
                          ),
                          Text(
                            '\$50.52',
                            style: TextStyle(
                              fontFamily: 'Roboto_SemiCondensed-Regular',
                              fontSize: 13,
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
                            ),
                          ),
                          Text(
                            '\$3.00',
                            style: TextStyle(
                              fontFamily: 'Roboto_SemiCondensed-Regular',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
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
                            ),
                          ),
                          Text(
                            '\$53.52',
                            style: TextStyle(
                              fontFamily: 'Roboto_SemiCondensed-Regular',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            content: Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Lottie.asset(
                                    'assets/images/Anime_tick.json',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Order Placed Successfully',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily:
                                          'Roboto_SemiCondensed-Regular',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text('Purchase'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _landscapelayout(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
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
                  height: 90,
                ),
                Stack(clipBehavior: Clip.none, children: [
                  Container(
                    padding: EdgeInsets.all(4),
                    width: ScreenSize.screenWidth * 0.9,
                    height: ScreenSize.screenHeight * 0.75,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
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
                            Image.asset('assets/images/master.png', height: 50),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 30,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
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
                  Positioned(
                      top: -60,
                      left: 0,
                      right: 0,
                      child: Image.asset('assets/images/CC.png', height: 150)),
                ]),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.all(25),
                  width: ScreenSize.screenWidth * 0.9,
                  // height: ScreenSize.screenHeight * 0.35,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
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
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
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
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
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
                                          fontFamily:
                                              'Roboto_SemiCondensed-Regular',
                                          fontSize: 13,
                                        ),
                                      ),
                                      Text(
                                        '\$50.52 (Monthly subscription)',
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
                          ],
                        ),
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
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
                            ),
                          ),
                          Text(
                            '\$50.52',
                            style: TextStyle(
                              fontFamily: 'Roboto_SemiCondensed-Regular',
                              fontSize: 13,
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
                            ),
                          ),
                          Text(
                            '\$3.00',
                            style: TextStyle(
                              fontFamily: 'Roboto_SemiCondensed-Regular',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
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
                            ),
                          ),
                          Text(
                            '\$53.52',
                            style: TextStyle(
                              fontFamily: 'Roboto_SemiCondensed-Regular',
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.primary,
                        thickness: 2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            content: Padding(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Lottie.asset(
                                    'assets/images/Anime_tick.json',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    'Order Placed Successfully',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily:
                                          'Roboto_SemiCondensed-Regular',
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text('Purchase'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

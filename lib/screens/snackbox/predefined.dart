import 'package:cb016148/services/screensize.dart';
import 'package:cb016148/themes/colors.dart';
import 'package:cb016148/widgets/footer.dart';
import 'package:flutter/material.dart';

class Predefined extends StatelessWidget {
  const Predefined({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: thirdcolor,
        title: Text('Japanese Snacks'),
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
                  Text(
                    'Japanese Snacks',
                    style: TextStyle(
                      fontFamily: 'Roboto_SemiCondensed-Regular',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: primarycolor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: primarycolor, width: 2)),
                    child: Text(
                      'Size: Large',
                      style: TextStyle(
                        fontFamily: 'Roboto_SemiCondensed-Regular',
                        fontSize: 15,
                        color: primarycolor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: secondarycolor,
                    ),
                    child: Image.asset('assets/images/japanese_snacks.png',
                        height: 200),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '\$50.52',
                        style: TextStyle(
                          fontFamily: 'Roboto_SemiCondensed-Regular',
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: primarycolor, width: 2)),
                        child: Text(
                          '+ Add to Cart',
                          style: TextStyle(
                            fontFamily: 'Roboto_SemiCondensed-Regular',
                            fontSize: 15,
                            color: primarycolor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: ScreenSize.screenWidth * 0.85,
                        height: ScreenSize.screenHeight * 0.25,
                        decoration: BoxDecoration(
                            color: secondarycolor,
                            borderRadius: BorderRadius.circular(25),
                            border:
                                Border.all(color: secondarycolor, width: 2)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text('Quantity'),
                            SizedBox(height: 10),
                            Container(
                              width: ScreenSize.screenWidth * 0.8,
                              height: ScreenSize.screenWidth * 0.08,
                              decoration: BoxDecoration(
                                  color: secondarycolor,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      color: secondarycolor, width: 2)),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Icon(Icons.remove),
                                    Text('1 Box'),
                                    Icon(Icons.add),
                                  ]),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              width: ScreenSize.screenWidth * 0.8,
                              height: ScreenSize.screenWidth * 0.08,
                              decoration: BoxDecoration(
                                color: thirdcolor,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.circle),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('One-time-order'),
                                      ],
                                    ),
                                    Text('\$50.52'),
                                  ]),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              width: ScreenSize.screenWidth * 0.8,
                              height: ScreenSize.screenWidth * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.circle_outlined),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text('Subscribe & Save'),
                                      ],
                                    ),
                                    Text('(Monthly)\$45.52'),
                                  ]),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primarycolor,
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    fontFamily: 'Roboto_SemiCondensed-Regular',
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

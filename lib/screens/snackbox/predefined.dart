import 'package:cb016148/widgets/footer.dart';
import 'package:flutter/material.dart';

class Predefined extends StatelessWidget {
  const Predefined({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE5D9),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png', height: 25),
            Container(
              width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Actor-Regular',
                          fontSize: 15,
                        ),
                      )),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Customize',
                        style: TextStyle(
                          fontFamily: 'Actor-Regular',
                          fontSize: 15,
                        ),
                      )),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        'Subscription',
                        style: TextStyle(
                          fontFamily: 'Actor-Regular',
                          fontSize: 15,
                        ),
                      )),
                  InkWell(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Color(0xffffc29a),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            'Senu',
                            style: TextStyle(
                              fontFamily: 'Actor-Regular',
                              fontSize: 15,
                            ),
                          ))),
                  IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                ],
              ),
            )
          ],
        ),
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
                      fontFamily: 'Actor-Regular',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 224, 42, 42),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xffdc6719), width: 2)),
                    child: Text(
                      'Size: Large',
                      style: TextStyle(
                        fontFamily: 'Actor-Regular',
                        fontSize: 15,
                        color: Color(0xffdc6719),
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
                      color: Color(0xffdc6719).withOpacity(0.1),
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
                          fontFamily: 'Actor-Regular',
                          fontSize: 15,
                          color: Color(0xff4b9a44),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border:
                                Border.all(color: Color(0xffdc6719), width: 2)),
                        child: Text(
                          '+ Add to Cart',
                          style: TextStyle(
                            fontFamily: 'Actor-Regular',
                            fontSize: 15,
                            color: Color(0xffdc6719),
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
                        width: 450,
                        height: 235,
                        decoration: BoxDecoration(
                            color: Color(0xfffffcf7),
                            borderRadius: BorderRadius.circular(25),
                            border:
                                Border.all(color: Color(0xffc6c6c6), width: 2)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text('Quantity'),
                            SizedBox(height: 10),
                            Container(
                              width: 400,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xfffffcf7),
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                      color: Color(0xffc6c6c6), width: 2)),
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
                              width: 400,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Color(0xffeaeaea),
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
                              width: 400,
                              height: 30,
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
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4b9a44),
                          padding: const EdgeInsets.all(9),
                        ),
                        child: const Text(
                          'Buy Now',
                          style: TextStyle(
                            fontFamily: 'Actor-Regular',
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

import 'package:cb016148/services/screensize.dart';
import 'package:cb016148/themes/colors.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(20),
            width: ScreenSize.screenWidth * 0.8,
            height: ScreenSize.screenHeight * 0.7,
            child: Column(
              children: [
                Text(
                  'Create Account',
                  style: TextStyle(fontSize: 36),
                ),
                Text('Join now'),
                SizedBox(
                  height: 15,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primarycolor),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          hintText: "Name"),
                    )),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primarycolor),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          hintText: "Email"),
                    )),
                SizedBox(height: 15),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primarycolor),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          hintText: "Password"),
                      obscureText: true,
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: primarycolor),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.white)),
                          hintText: "Confirm Password"),
                      obscureText: true,
                    )),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: primarycolor,
                      padding: const EdgeInsets.fromLTRB(50, 5, 50, 5)),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontFamily: 'Actor-Regular',
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account? '),
                    Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Actor-Regular',
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

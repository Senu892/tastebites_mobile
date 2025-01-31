import 'package:cb016148/screens/home/home_screen.dart';
import 'package:cb016148/screens/login/login.dart';
import 'package:cb016148/services/screensize.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();

  void _validateandlogin() {
    String email = _emailcontroller.text.trim();
    String Password = _passwordcontroller.text.trim();

    if (!email.contains('@')) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Invalid Email'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ));
      return;
    }
    if (Password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Password too short'),
        backgroundColor: Colors.red,
        duration: Duration(seconds: 2),
      ));
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Logged in'),
      backgroundColor: Colors.green,
      duration: Duration(seconds: 2),
    ));

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.background,
              ),
              padding: EdgeInsets.all(20),
              width: ScreenSize.screenWidth * 0.8,
              // height: ScreenSize.screenHeight * 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: ScreenSize.screenHeight * 0.2,
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Roboto_SemiCondensed-Regular',
                    ),
                  ),
                  Text('Join now'),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            labelText: "Name"),
                      )),
                  SizedBox(height: 15),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: TextFormField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            labelText: "Email"),
                      )),
                  SizedBox(height: 15),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: TextFormField(
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            labelText: "Password"),
                        obscureText: true,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: Theme.of(context).colorScheme.primary),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: Theme.of(context).colorScheme.background,
                            )),
                            labelText: "Confirm Password"),
                        obscureText: true,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _validateandlogin();
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        padding: const EdgeInsets.fromLTRB(50, 5, 50, 5)),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontFamily: 'Roboto_SemiCondensed-Regular',
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
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontFamily: 'Roboto_SemiCondensed-Regular',
                            color: Colors.blue,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

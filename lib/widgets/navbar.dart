import 'package:cb016148/screens/about/aboutus.dart';
import 'package:cb016148/screens/checkout/checkoutpage.dart';
import 'package:cb016148/screens/home/home_screen.dart';
import 'package:cb016148/screens/userprofile/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  final int selectedIndex;
  NavBar({
    super.key,
    required this.selectedIndex,
  });

  final List<Widget> _WidgetOptions = <Widget>[
    HomeScreen(),
    AboutUs(),
    Checkout(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          backgroundColor:  Theme.of(context).colorScheme.background,
          activeColor: Theme.of(context).colorScheme.primary,
          padding: EdgeInsets.all(10),
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            if (index == _WidgetOptions.length - 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const UserProfile()));
            }

            if (index == _WidgetOptions.length - 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Checkout()));
            }

            if (index == _WidgetOptions.length - 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const AboutUs()));
            }

            if (index == _WidgetOptions.length - 4) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            }
          },
          tabs: [
            GButton(
              icon: Icons.home,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.people,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.shopping_cart_checkout,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.account_circle_sharp,
              iconSize: 30,
            ),
          ]),
    );
  }
}

import 'package:cb016148/screens/home/widgets/snackbox.dart';
import 'package:cb016148/screens/snackbox/predefined.dart';
import 'package:cb016148/widgets/navbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeState();
  const HomeScreen({super.key});
}

class _HomeState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Text(
                    "A World of",
                    style: TextStyle(
                      fontFamily: 'Roboto_SemiCondensed-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Flavors at Your Doorstep!",
                    style: TextStyle(
                      fontFamily: 'Roboto_SemiCondensed-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Discover global flavors with our curated snack boxes. From familiar treats to new tastes, TasteBites has it all! Explore Japan, savor spice, or indulge in European delights – delivered to your door!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto_SemiCondensed-Regular',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Order Now',
                  style: TextStyle(
                    fontFamily: 'Roboto_SemiCondensed-Regular',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Image.asset('assets/images/tastebites.png', height: 500),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "Customized Snack Boxes",
                    style: TextStyle(
                      fontFamily: 'Roboto_SemiCondensed-Regular',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Find Your Perfect Box",
                    style: TextStyle(
                      fontFamily: 'Roboto_SemiCondensed-Regular',
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Wrap(
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Predefined()));
                      },
                      child: SnackBox(
                        title: 'Japanese Snacks',
                        size: 'Large',
                        price: 50.52,
                        imagePath: 'assets/images/japanese_snacks.png',
                      ),
                    ),
                    SnackBox(
                      title: 'Korean Treats',
                      size: 'Medium',
                      price: 45.99,
                      imagePath: 'assets/images/korean_treats.png',
                    ),
                    SnackBox(
                      title: 'European Delights',
                      size: 'Large',
                      price: 55.00,
                      imagePath: 'assets/images/european_delights.png',
                    ),
                    SnackBox(
                      title: 'American Favorites',
                      size: 'Small',
                      price: 35.99,
                      imagePath: 'assets/images/american_favorites.png',
                    ),
                    SnackBox(
                      title: 'Indian Chocos',
                      size: 'Medium',
                      price: 48.75,
                      imagePath: 'assets/images/indian_chocos.png',
                    ),
                    SnackBox(
                      title: 'Chinese Snacks',
                      size: 'Large',
                      price: 52.25,
                      imagePath: 'assets/images/chinese_snacks.png',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(selectedIndex: _selectedIndex),
    );
  }
}

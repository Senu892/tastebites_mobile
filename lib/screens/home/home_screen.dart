import 'package:cb016148/screens/home/widgets/snackbox.dart';
import 'package:cb016148/widgets/footer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE5D9),
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/images/logo.png', height: 25),
            Container(width: 350,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      child: Container(padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(color: Color(0xffffc29a),borderRadius: BorderRadius.circular(10)),
                        child: Text('Senu' , style: TextStyle(
                          fontFamily: 'Actor-Regular',
                          fontSize: 15,),
                        
                        )
                      )),
                      
                     IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),  
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
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "A World of",
                    style: TextStyle(
                      fontFamily: 'Actor-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Flavors at Your Doorstep!",
                    style: TextStyle(
                      fontFamily: 'Actor-Regular',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Discover global flavors with our curated snack boxes. From familiar treats to new tastes, TasteBites has it all! Explore Japan, savor spice, or indulge in European delights – delivered to your door!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Actor-Regular',
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Order Now',
                  style: TextStyle(
                    fontFamily: 'Actor-Regular',
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
                      fontFamily: 'Actor-Regular',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Find Your Perfect Box",
                    style: TextStyle(
                      fontFamily: 'Actor-Regular',
                      fontSize: 17,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: [
                  SnackBox(
                    title: 'Japanese Snacks',
                    size: 'Large',
                    price: 50.52,
                    imagePath: 'assets/images/japanese_snacks.png',
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
            const Footer(),
          ],
        ),
      ),
    );
  }
}

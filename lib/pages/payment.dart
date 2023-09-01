import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaymentPage(), // Set the PaymentPage as the home page
    );
  }
}

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/Payment.png'), // Replace with your background image asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content on top of the background image
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Text(
                    'Payment',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 81, 79, 79),
                    ),
                  ),
                ),
                SizedBox(height: 20), // Add some space below the text
                // Add your payment-related widgets here
                Image.asset(
                  'assets/grl.png', // Replace with your image asset
                  width: 180, // Set the width as per your design
                  height: 180, // Set the height as per your design
                  fit: BoxFit.contain, // Adjust the fit as needed
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

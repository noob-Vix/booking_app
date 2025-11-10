import 'package:flutter/material.dart';


class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 120),
        margin: EdgeInsets.only(top: 200),
        child: Column(
          children: [
            Image.asset('images/booking.png', scale: 3,),
            SizedBox(height: 25,),
            Text('Book Now!',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          ],
        )
      ),
    );
  }
}
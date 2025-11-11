import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';


class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/el_nido.jpg"),
              fit: BoxFit.cover
            )
          )
          ),
          Center(
            child: Align(
              alignment: AlignmentGeometry.bottomCenter,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    width: 500,
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Text('Travel the Wonder of Palawan with Us!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                          ),
                          Text('Tourism made easy. Explore, Book, and Experience the beauty of Palawan with comfort.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                          ),
                          SliderButton(
                            action: () async{return true;},
                            label: Text('Get Started',
                              style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffffffff)
                              ),
                            ),
                            icon: Icon(Icons.airport_shuttle_outlined, size: 35, color: Colors.white,),
                            buttonSize: 60,
                            alignLabel: Alignment.center,
                            backgroundColor: Colors.grey.withValues(alpha: 0.6),
                            buttonColor: const Color.fromARGB(255, 245, 144, 12),
                            ),
                            SizedBox(height: 20),

                      ],
                    ),
                  ),
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
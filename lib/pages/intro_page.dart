import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
         children: [
          Center(child: Image.asset('assets/images/nike-logo-49337.png',width: MediaQuery.of(context).size.width*0.8,)),
         ],
       ),
    );
  }
}
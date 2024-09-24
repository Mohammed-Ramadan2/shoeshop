import 'package:flutter/material.dart';
import 'package:shoe_shop_app/component/bottom_nav_bar.dart';
import 'package:shoe_shop_app/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Center(
              child: Image.asset(
            'assets/images/zeelogo.png',
            width: MediaQuery.of(context).size.width * 0.8,
          )),
          SizedBox(height: MediaQuery.of(context).size.height * 0.15),
          Text(
            'A Step In Every Story',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 6),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Text(
            'We place quality and comfort as our primary priority while making sure our products are accessible and affordable.',
            style: TextStyle(fontSize: 16, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.06),
          GestureDetector(
            onTap: () =>
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBar())),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff152944),
              ),
              child: Center(
                child: Text(
                  'Shop Now',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

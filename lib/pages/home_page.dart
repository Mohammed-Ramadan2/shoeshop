import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shop_app/component/shoe_tile.dart';
import 'package:shoe_shop_app/models/shoe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.brown[100],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Search'),
                    Icon(FluentIcons.search_16_regular)
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
                'Our daily physical contact point with earth is our feet.',
                style: TextStyle(fontSize: 14, color: Colors.grey)),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks ️‍🔥',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ) ,
                Text('see all', style: TextStyle(color: Colors.blue),)
              ],
            ),
          ),
          ShoeTile(shoe: Shoe(name: 'name', price: 'price', imagepass: 'assets/images/Skipper.png', description: 'description'),)
        ],
      ),
    );
  }
}

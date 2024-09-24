import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
        backgroundColor: Colors.brown[300],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset(
                    'assets/images/zeelogo.png',
                    height: MediaQuery.of(context).size.height * 0.15,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    leading: Icon(
                      FluentIcons.home_24_filled,
                      color: Colors.white,
                    ),
                    title: Text(
                      'H O M E',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    leading: Icon(
                      FluentIcons.book_exclamation_mark_20_filled,
                      color: Colors.white,
                    ),
                    title:
                        Text('A B O U T', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListTile(
                    leading: Icon(
                      FluentIcons.sign_out_20_filled,
                      color: Colors.white,
                    ),
                    title: Text('S I G N   O U T',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      );
  }
}
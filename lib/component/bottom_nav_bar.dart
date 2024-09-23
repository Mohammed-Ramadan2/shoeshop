import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:shoe_shop_app/pages/cart_page.dart';
import 'package:shoe_shop_app/pages/home_page.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List screens = [
    HomePage(),
    CartPage(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> destinations = [
      NavigationDestination(
        icon: Icon(
          selectedIndex == 0
              ? FluentIcons.home_16_filled // Filled icon when selected
              : FluentIcons.home_16_regular, // Regular icon when not selected
        ),
        label: 'Home',
      ),
      NavigationDestination(
        icon: Icon(
          selectedIndex == 1
              ? FluentIcons.cart_16_filled // Filled icon when selected
              : FluentIcons.cart_16_regular, // Regular icon when not selected
        ),
        label: 'Cart',
      ),
    ];
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        destinations: destinations,
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[600],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/zeelogo.png',
                  height: MediaQuery.of(context).size.height * 0.15,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(
                    FluentIcons.home_24_filled,
                    color: Colors.white,
                  ),
                  title: Text(
                    'H O M E',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ListTile(
                  leading: Icon(
                    FluentIcons.book_exclamation_mark_20_filled,
                    color: Colors.white,
                  ),
                  title:
                      Text('A B O U T', style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(
                    FluentIcons.sign_out_20_filled,
                    color: Colors.white,
                  ),
                  title: Text('S I G N   O U T',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            )
          ],
        ),
      ),
      body: screens[selectedIndex],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_shop_app/models/user_cart.dart';
import 'package:shoe_shop_app/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserCart>(
      builder: (context, userCart, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Your Cart'),
            centerTitle: true,
          ),
          body: userCart.getUserCart().isEmpty
              ? const Center(child: Text('Your cart is empty'))
              : ListView.builder(
                  itemCount: userCart.getUserCart().length,
                  itemBuilder: (context, index) {
                    Shoe shoe = userCart.getUserCart()[index];
                    return ListTile(
                      leading: Image.asset(shoe.imagepass, width: 50, height: 50),
                      title: Text(shoe.name),
                      subtitle: Text('${shoe.price} EGP'),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove_circle),
                        onPressed: () {
                          userCart.removeItemFromCart(shoe);
                        },
                      ),
                    );
                  },
                ),
        );
      },
    );
  }
}

import 'package:shoe_shop_app/models/shoe.dart';

class UserCart {
  List<Shoe> cart = [];
  List<Shoe> getUserCart(){
    return cart;
  }
  void addItemToCart(Shoe shoe){
    cart.add(shoe);
  }
  void removeItemFromCart(Shoe shoe){
    cart.remove(shoe);
  }
}
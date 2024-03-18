import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak',
      price: '236',
      imagePath: 'lib/images/10.png',
      description: 'The Forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '212',
      imagePath: 'lib/images/11.png',
      description:
          'The BAckward-thinking low design of his latest signature shoe.',
    ),
    Shoe(
      name: 'KD Treys',
      price: '267',
      imagePath: 'lib/images/12.png',
      description: 'The design of future - signature shoe.',
    ),
    Shoe(
      name: 'Kyrie 6',
      price: '159',
      imagePath: 'lib/images/13.png',
      description: 'Comfortable shoe with futuristic design.',
    )
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:project9/product.dart';
import 'package:provider/provider.dart';

// ignore: camel_case_types
class cart_provider extends ChangeNotifier{
  final List <product> _cart=[];
  List <product> get cart=> _cart;
  void toggleFavorite(product Product){
    if(_cart.contains(Product)){
      for(product element in _cart){
        element.quantity++;
      }
   
    }else{
      _cart.add(Product);
    }
    notifyListeners();
  }
 incrementqtn(int index){
     _cart[index].quantity++;
  notifyListeners();
  }

   decrementqtn(int index){
    if(_cart[index].quantity<=1){
      return;
    }
    _cart[index].quantity--;
   }
  totalPrice(){
    double total1=0.0;
    for(product element in _cart){
      total1+=element.price*element.quantity;
    }
    return total1;
  }

  static cart_provider of(BuildContext context,{
    bool listen=true,

  }){
    return Provider.of<cart_provider>(context,listen: listen);
  }
}


import 'package:flutter/material.dart';
import 'package:project9/product.dart';
import 'package:provider/provider.dart';

class FavoriteProvider extends ChangeNotifier{
  final List <product> _favorites=[];
  List <product> get favorites=> _favorites;
  void toggleFavorite(product Product){
    if(_favorites.contains(Product)){
      _favorites.remove(Product);
    }else{
      _favorites.add(Product);
    }
    notifyListeners();
  }

bool isexist(product Product){
  final isexist=_favorites.contains(Product);
  return isexist;
}
  static FavoriteProvider of(BuildContext context,{
    bool listen=true,

  }){
    return Provider.of<FavoriteProvider>(context,listen: listen);
  }
}


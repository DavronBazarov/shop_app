import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Product with ChangeNotifier{
  String id;
  String title;
  String description;
  double price;
  String imageUrl;
  bool isFavorite;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      this.isFavorite = false});

  void toggleFavoriteStatus() {
    isFavorite = ! isFavorite;
    notifyListeners();
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../model/categories_model.dart';

String apiKey = "563492ad6f917000010000011e1eac7b103241429cac819b434c35df";

List <CategoriesModel> getCategories(){


  List<CategoriesModel> categories = [];
  CategoriesModel categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/545008/pexels-photo-545008.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.imgUrl = "assets/street_art_cat.jpeg";
  categoriesModel.categoriesName = "Street Art";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/704320/pexels-photo-704320.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.imgUrl = "assets/wild_life_cat.jpeg";
  categoriesModel.categoriesName = "Wild Life";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/34950/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.imgUrl = "assets/nature_cat.jpg";
  categoriesModel.categoriesName = "Nature";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.imgUrl = "assets/city_cat.jpeg";
  categoriesModel.categoriesName = "City";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/1434819/pexels-photo-1434819.jpeg?auto=compress&cs=tinysrgb&h=750&w=1260";
  categoriesModel.imgUrl = "assets/motivation_cat.jpeg";
  categoriesModel.categoriesName = "Motivation";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/2116475/pexels-photo-2116475.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.imgUrl = "assets/bikes_cat.jpeg";
  categoriesModel.categoriesName = "Bikes";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.imgUrl = "assets/cars_cat.jpeg";
  categoriesModel.categoriesName = "Cars";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  // categoriesModel.imgUrl = "https://images.pexels.com/photos/1149137/pexels-photo-1149137.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500";
  categoriesModel.imgUrl = "assets/sri_lanka_cat.jpg";
  categoriesModel.categoriesName = "Sri Lanka";
  categories.add(categoriesModel);
  categoriesModel = new CategoriesModel();

  return categories;
}
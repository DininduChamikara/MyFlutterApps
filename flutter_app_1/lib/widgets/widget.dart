
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_1/views/image_view.dart';

import 'package:cached_network_image/cached_network_image.dart';

import '../model/wallpaper_model.dart';

Widget brandName() {
  return Center(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "WallArt",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black87, fontFamily: 'Overpass'),
        ),
        Text(
          "Gallery",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.red, fontFamily: 'Overpass'),
        )
      ],
    ),
  );
}

Widget wallpapersList({required List <WallpaperModel> wallpapers, context}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((wallpaper){
        return GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ImageView(
                      imgUrl: wallpaper.src.portrait)
              ));

            },
            child: Hero(
              tag: wallpaper.src.portrait,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(wallpaper.src.portrait, fit: BoxFit.cover,),
                ),
              ),
            ),
          )
        );
      }).toList(),
    ),
  );
}


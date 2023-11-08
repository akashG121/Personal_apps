import 'package:flutter/material.dart';

class Items {
  String title;
  String description;
  String imageURL;

  Items(
      {required this.title, required this.description, required this.imageURL});
}

List<Items> ItemsList = [
  Items(
      title: 'Mobiles',
      description: 'good Items',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/images/mobiles_img.webp"
    // imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
  Items(
      title: 'Laptops',
      description: 'good Items',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/images/lap_img.jpeg"),
  Items(
      title: 'TVs',
      description: 'Pairets Of The Caribbean',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/images/tv_lcd.jpeg"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"

  ),
  Items(
      title: 'Earphones',
      description: 'good Items',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/images/Boult-Audio-X1-Pro-Type-C-Earphones-1024x576.jpg"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
];

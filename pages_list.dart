import 'package:flutter/material.dart';

class PagesList {
  String title;
  String description;
  String imageURL;

  PagesList(
      {required this.title, required this.description, required this.imageURL});
}

List<PagesList> ItemsList = [
  PagesList(
      title: 'Mobiles',
      description: 'good Items',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/images/mobiles_img.webp"
    // imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
];

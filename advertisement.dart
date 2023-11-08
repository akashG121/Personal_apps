import 'package:flutter/material.dart';

class Advertisements {
  String title;
  String description;
  String imageURL;

  Advertisements(
      {required this.title, required this.description, required this.imageURL});
}

List<Advertisements> AdvertisementsList = [
  Advertisements(
      title: 'Add_Myntra',
      description: 'good Advertisements',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/advertisement_pamplet/myntra_sale_1.png"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
  Advertisements(
      title: 'Add_Amezon',
      description: 'Pairets Of The Caribbean',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/advertisement_pamplet/amazon.jpeg"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
  Advertisements(
      title: 'Add_Myntra-2',
      description: 'good Advertisements',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/advertisement_pamplet/Big_Myntra_Sell.jpeg"

  ),
  Advertisements(
      title: 'Add_Flipkart',
      description: 'good Advertisements',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/advertisement_pamplet/flipkart_sale.jpeg"
  ),
  Advertisements(
      title: 'Add_Myntra',
      description: 'good Advertisements',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/advertisement_pamplet/myntra_sale_1.png"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
];

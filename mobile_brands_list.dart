import 'package:flutter/material.dart';

class Brands {
  String title;
  String description;
  String imageURL;

  Brands(
      {required this.title, required this.description, required this.imageURL});
}

List<Brands> BrandsList = [
  Brands(
      title: 'Xiaomi',
      description: 'good Brands',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/brands/Xiaomi_logo.svg.png"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
  Brands(
      title: 'Samsung',
      description: 'Pairets Of The Caribbean',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/brands/samu_logo.png"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"

  ),
  Brands(
      title: 'Apple',
      description: 'good Brands',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/brands/apple_img.jpeg"
    // imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
  Brands(
      title: 'VIVO',
      description: 'good Brands',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/brands/Vivo-Logo.jpg"
    //imageURL: "https://images-na.ssl-images-amazon.com/images/S/pv-target-images/4b35a02dfd530e90df2a80f49ed9771dacb35ac630d0666808ee9f739f661114._UY500_UX667_RI_TTW_.jpg"
  ),
  Brands(
      title: 'Oppo',
      description: 'good Brands',
      imageURL:
      "/Users/admin/Documents/task/demo/Assessment/shopping_mart/asset/brands/oppo_img.jpeg"),

];

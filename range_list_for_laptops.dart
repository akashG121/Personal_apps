import 'package:flutter/material.dart';

class range_of_products_laptop {
  String range;
  String prices;

  range_of_products_laptop(
      { required this.range , required this.prices});
}

List<range_of_products_laptop> range_of_products_laptopList = [
  range_of_products_laptop(
    range: 'Best Laptop Under',
    prices: '30,000',
  ),
  range_of_products_laptop(
    range: 'Best Laptop Under',
    prices: '40,000',
  ),
  range_of_products_laptop(
    range: 'Best Laptop Under',
    prices: '50,000',
  ),
  range_of_products_laptop(
    range: 'Best Laptop Under',
    prices: '55,000',
  ),
];

import 'package:flutter/material.dart';

class range_of_products {
  String range;
  String prices;

  range_of_products(
      { required this.range , required this.prices});
}

List<range_of_products> range_of_productsList = [
  range_of_products(
      range: 'Best Mobile Under',
      prices: '5,000',
     ),
  range_of_products(
    range: 'Best Mobile Under',
    prices: '10,000',
  ),
  range_of_products(
    range: 'Best Mobile Under',
    prices: '15,000',
  ),
  range_of_products(
    range: 'Best Mobile Under',
    prices: '20,000',
  ),
  range_of_products(
    range: 'Best Mobile Under',
    prices: '30,000',
  ),
];

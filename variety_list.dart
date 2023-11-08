import 'dart:ffi';

import 'package:flutter/material.dart';
class types_of_gadgets {
  String type;


  types_of_gadgets(
      {required this.type,}
      );
}
List<types_of_gadgets> types_of_gadgetsList = [
  types_of_gadgets(
      type: 'Mobiles',

   ),
  types_of_gadgets(
    type: 'Laptops',
  ),
  types_of_gadgets(
    type: 'Tablets',
  ),
  types_of_gadgets(
    type: 'TVs',
  ),
  types_of_gadgets(
    type: 'Monitors',
  ),
  ];
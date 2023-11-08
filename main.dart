import 'package:flutter/material.dart';
import 'package:shopping_mart/Smart.dart';
import 'package:provider/provider.dart';
import 'package:shopping_mart/provider_for_index.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Index_Change(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Mart(),
    );

  }
}

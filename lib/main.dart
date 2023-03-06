// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:ecommerce_openfashion/components/products/listview.dart';
import 'package:ecommerce_openfashion/globals/colors.dart';
import 'package:flutter/material.dart';

import 'components/appbar.dart';
import 'globals/style_guide.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        fontFamily: 'TensorSans',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 18, height: 2.22, letterSpacing: 4),
          titleMedium: TextStyle(fontSize: 16, height: 1.5),
          titleSmall: TextStyle(fontSize: 14, height: 1.42),
          bodyLarge: TextStyle(fontSize: 16, height: 1.5),
          bodyMedium: TextStyle(fontSize: 14, height: 1.71),
          bodySmall: TextStyle(fontSize: 12, height: 1.5),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 18, height: 2.22, letterSpacing: 4),
          titleMedium: TextStyle(fontSize: 16, height: 1.5),
          titleSmall: TextStyle(fontSize: 14, height: 1.42),
          bodyLarge: TextStyle(fontSize: 16, height: 1.5),
          bodyMedium: TextStyle(fontSize: 14, height: 1.71),
          bodySmall: TextStyle(fontSize: 12, height: 1.5),
        ),
      ),
      themeMode: ThemeMode.system,
      home: Scaffold(
        appBar: CustomAppBar(
          backgroundColor: AppColor.headerColor,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const ProductListView(),
              const ProductListView(),
              const ProductListView(),
              const ProductListView(),
              const ProductListView(),
              const ProductListView(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:screen_navigation/screens/home_screen.dart';
import 'package:screen_navigation/screens/login_screen.dart';
import 'package:screen_navigation/screens/product_screen.dart';

final Map<String, Widget Function(BuildContext)> AppRoutes = {
  '/': (_) =>  ProductScreen(),
  HomeScreen.routeName: (_) =>  HomeScreen(),
};

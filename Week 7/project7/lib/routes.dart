import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_page.dart';
import 'galerry_page.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => const HomePage(),
  '/profile': (context) => const ProfilePage(),
  '/gallery': (context) => const GalleryPage(),
};
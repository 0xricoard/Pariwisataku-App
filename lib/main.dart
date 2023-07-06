import 'package:app/screens/category_screen.dart';
import 'package:flutter/material.dart';
import './screens/detail_screen.dart';
import './screens/places_screen.dart';
import './screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Pariwisata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        canvasColor: Color.fromRGBO(0, 119, 190, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline6: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              subtitle1: TextStyle(fontWeight: FontWeight.bold),
            ),
      ),
      initialRoute: '/login',
      routes: {
        '/category': (ctx) => CategoryScreen(),
        '/login': (ctx) => SignInScreen(),
        '/places': (ctx) => PlacesScreen(),
        '/detail': (ctx) => DetailScreen(),
      },
    );
  }
}

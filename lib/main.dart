import 'package:flutter/material.dart';
import 'package:flutter_testing/screens/main.dart';
import 'package:provider/provider.dart';
import 'models/favorites.dart';


void main() {
  runApp(
      TestingApp()
  );


}
class TestingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          MainPage.routeName: (context) => MainPage(),
        },
        initialRoute: MainPage.routeName,
      ),
    );
  }
}
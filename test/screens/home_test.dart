import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/models/favorites.dart';
import 'package:flutter_testing/screens/home.dart';
import 'package:provider/provider.dart';

Widget createHomeScreen() => ChangeNotifierProvider<Favorites>(
  create: (context) => Favorites(),
  child: MaterialApp(
    home: HomePage(),
  ),
);

void main() {

  testWidgets('test home widget--', (widgetTester) async{
     await widgetTester.pumpWidget(createHomeScreen());
     expect(find.text('Item 5'), findsOneWidget);
     await widgetTester.fling(find.byType(ListView), Offset(0, -200), 300);
     await widgetTester.pumpAndSettle();
     expect(find.text('Item 0'), findsNothing);
  });
}

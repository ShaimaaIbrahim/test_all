import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/models/favorites.dart';
import 'package:flutter_testing/screens/favorites.dart';
import 'package:provider/provider.dart';

late Favorites favoritesList;

Widget createFavoritesScreen() => ChangeNotifierProvider<Favorites>(
      create: (context) {
        favoritesList = Favorites();
        return favoritesList;
      },
      child: MaterialApp(
        home: FavoritesPage(),
      ),
    );

void addItems(){
  for(int i=0 ;i <= 10; i+=2){
    favoritesList.add(i);
  }
}
void main() {

  group('test widgets', (){

    testWidgets('test if list is show up', (tester) async{
      await tester.pumpWidget(createFavoritesScreen());
      addItems();
      await tester.pumpAndSettle();
      expect(find.byType(ListView), findsOneWidget);
    });

    
    testWidgets('Testing remove button', (tester) async{
      await tester.pumpWidget(createFavoritesScreen());
      addItems();
      await tester.pumpAndSettle();
      var widgetList = tester.widgetList(find.byIcon(Icons.close)).length;
      await tester.pumpAndSettle();
      await tester.tap(find.byIcon(Icons.close).first);
      await tester.pumpAndSettle();
      expect( tester.widgetList(find.byIcon(Icons.close)).length, lessThan(widgetList));
      expect(find.text('Removed from favorites.'), findsOneWidget);
    });
  });
}


import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/main.dart';
import 'package:integration_test/integration_test.dart';

void main(){

  group('Testing App Performance Tests', (){
    final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
    as IntegrationTestWidgetsFlutterBinding;

    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    testWidgets('Scrolling test', (tester) async{
      await tester.pumpWidget(TestingApp());
      final listFinder = find.byType(ListView);

      await binding.watchPerformance(() async{
        await tester.fling(listFinder, Offset(0, 500), 300);
        await tester.pumpAndSettle();
        await tester.fling(listFinder, Offset(0, -500), 300);
        await tester.pumpAndSettle();

      }, reportKey: 'Scrolling_summary');
    });

    testWidgets( 'test add and remove favorite', (tester) async{
    await tester.pumpWidget(TestingApp());

    final iconKeys = [
      'icon_0',
      'icon_1',
      'icon_2',
    ];

    for(var iconKey in iconKeys){
      await tester.tap(find.byKey(ValueKey(iconKey)), );
      await tester.pumpAndSettle();
      expect(find.text('Added to favorites.'), findsOneWidget);
    }
    });
  });

}
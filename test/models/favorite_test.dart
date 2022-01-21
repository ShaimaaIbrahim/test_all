import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/models/favorites.dart';

void main() {
  group('testing App Provider', () {
    Favorites favorites = Favorites();
    test('test favorite class', () {
      int number = 30;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
    });
    test('second test favorites', () {
      favorites.remove(30);
      expect(favorites.items.contains(30), false);
    });
  });
}

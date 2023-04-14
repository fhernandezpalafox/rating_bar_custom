// test/rating_bar_custom_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rating_bar_custom/rating_bar_custom.dart';

void main() {
  testWidgets('RatingBarCustom muestra correctamente el número de estrellas', (WidgetTester tester) async {
    final int numberStars = 5;
    final double starCount = 3.5;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: RatingBarCustom(
            numberStars: numberStars,
            starCount: starCount,
            colorStar: Colors.orange,
          ),
        ),
      ),
    );

    final stars = find.byIcon(Icons.star);
    final halfStars = find.byIcon(Icons.star_half);
    final borderStars = find.byIcon(Icons.star_border);

    expect(stars, findsNWidgets(3));
    expect(halfStars, findsOneWidget);
    expect(borderStars, findsNWidgets(1));
  });
}

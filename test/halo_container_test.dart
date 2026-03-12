import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:halo_container/halo_container.dart';

void main() {
  testWidgets('HaloContainer renders correctly with provided properties', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: HaloContainer(
            backgroundColor: const Color.fromRGBO(255, 235, 175, 0.2),
            gradient: const [
              Color(0xFFFFBC04),
              Color(0xFFF7931E),
              Color(0xFFF2D161),
              Color(0xFFF6A32F),
              Color(0xFFF5B240),
              Color(0xFFF7931E),
            ],
            borderRadius: 6,
            gradientWidth: 2,
            height: 60,
            onTap: () {},
            child: const Row(),
          ),
        ),
      ),
    );

    // Verify that the HaloContainer (or its child) is actually in the widget tree.
    expect(find.byType(Row), findsOneWidget);
  });
}

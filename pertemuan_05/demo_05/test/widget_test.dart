import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo_05/main.dart'; // Pastikan ini sesuai dengan nama project Anda

void main() {
  testWidgets('Test BottomNavigationBar navigation', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(MyApp());

    // Verify Home page is displayed initially
    expect(find.text('Home page'), findsOneWidget);
    expect(find.text('Email page'), findsNothing);
    expect(find.text('Profile page'), findsNothing);

    // Tap on the Email icon and trigger a frame
    await tester.tap(find.byIcon(Icons.email));
    await tester.pump();

    // Verify Email page is displayed
    expect(find.text('Email page'), findsOneWidget);
    expect(find.text('Home page'), findsNothing);
    expect(find.text('Profile page'), findsNothing);

    // Tap on the Profile icon and trigger a frame
    await tester.tap(find.byIcon(Icons.person));
    await tester.pump();

    // Verify Profile page is displayed
    expect(find.text('Profile page'), findsOneWidget);
    expect(find.text('Home page'), findsNothing);
    expect(find.text('Email page'), findsNothing);
  });
}

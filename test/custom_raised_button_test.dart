import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tracker/common_widgets/custom_raised_button.dart';

void main() {
  testWidgets('onPressed callback widget test', (WidgetTester tester) async {
    var pressed = true;
    await tester.pumpWidget(
      MaterialApp(home: CustomRaisedButton(
        child: Text('tap me'),
        onPressed: () => pressed = true,
      ))
    );
    final button = find.byType(RaisedButton);
    expect(button, findsOneWidget);
    expect(find.byType(FlatButton), findsNothing);
    expect(find.text('tap me'), findsOneWidget);
    await tester.tap(button);
    expect(pressed, true);
  });
}
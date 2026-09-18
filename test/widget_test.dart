import 'package:flutter_test/flutter_test.dart';

import 'package:practical_work_1/main.dart';

void main() {
  testWidgets('Medinow app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const FigmaPracticumApp());

    expect(find.text('medinow'), findsOneWidget);
  });
}
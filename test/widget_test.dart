import 'package:flutter_test/flutter_test.dart';
import 'package:travello_app/main.dart';

void main() {
  testWidgets('Splash screen displays Travello text', (WidgetTester tester) async {
    await tester.pumpWidget(const TravelloApp());

   
    await tester.pumpAndSettle();

   
    expect(find.text('Travello'), findsOneWidget);
  });
}

import 'dart:ui';

class Earnings {
  final String text;
  final String amount;
  Color? bgColor;
  Earnings({ required this.text, required this.amount, this.bgColor}); // 
}
Color blendedColor = Color.fromRGBO(
  (0 * 0.7 + 0 * 0.1).round(),   // Red
  (0 * 0.7 + 87 * 0.1).round(),  // Green
  (0 * 0.7 + 255 * 0.1).round(), // Blue
  (0.7 + 0.1).clamp(0.0, 1.0),   // Adjusted to ensure opacity is between 0 and 1
);
Color blendedColor1 = Color.fromRGBO(
  ((0 * 0.7) + (69 * 0.1)).round(),   // Red
  ((0 * 0.7) + (69 * 0.1)).round(),   // Green
  ((0 * 0.7) + (69 * 0.1)).round(),   // Blue
  (0.7 + 0.1).clamp(0.0, 1.0),        // Opacity
);

Color blendedColor3 = Color.fromRGBO(
  ((0 * 0.7) + (224 * 0.1)).round(),   // Red
  ((0 * 0.7) + (83 * 0.1)).round(),    // Green
  ((0 * 0.7) + (61 * 0.1)).round(),    // Blue
  (0.7 + 0.1).clamp(0.0, 1.0),          // Opacity
);

List<Earnings> earnings = [
  Earnings(text: 'Monday', amount: '30.00', bgColor: blendedColor),
  Earnings(text: 'Tuesday', amount: '20.00', bgColor: blendedColor1),
  Earnings(text: 'Wednesday', amount: '10.00', bgColor: blendedColor3)
];
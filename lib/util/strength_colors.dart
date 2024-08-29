part of '../password_strength_indicator.dart';

class StrengthColors {
  // Colors for the strength bar

  // Color of weak strength
  final Color weak;

  // Color of medium strength
  final Color medium;

  // Color of strong strength
  final Color strong;

  // Color of veryStrong strength
  final Color veryStrong;

  const StrengthColors({
    this.weak = Colors.red,
    this.medium = Colors.yellow,
    this.strong = Colors.lightGreen,
    this.veryStrong = Colors.green,
  });

  // Returns the color of the strength bar based on the strength
  Color getColor(double strength) {
    if (strength < 1 / 4) {
      return weak;
    } else if (strength < 2 / 4) {
      return medium;
    } else if (strength < 3 / 4) {
      return strong;
    } else {
      return veryStrong;
    }
  }
}

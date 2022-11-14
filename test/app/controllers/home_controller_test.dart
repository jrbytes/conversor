import 'package:conversor_flutter/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('deve converter de real para dólar com vírgula', () {
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('deve converter de real para dólar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('deve converter de dólar para real', () {
    toText.text = '1.0';
    homeController.toCurrency = homeController.currencies[1];
    homeController.fromCurrency = homeController.currencies[0];
    homeController.convert();
    expect(fromText.text, '5.65');
  });
}

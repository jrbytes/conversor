import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 100,
          left: 30,
          right: 30,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 170,
              ),
              const SizedBox(
                height: 45,
              ),
              CurrencyBox(),
              const SizedBox(
                height: 10,
              ),
              CurrencyBox(),
              const SizedBox(
                height: 45,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                onPressed: () {},
                child: Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

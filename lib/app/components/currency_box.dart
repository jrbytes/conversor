import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton(
              iconEnabledColor: Colors.amber,
              isExpanded: true,
              value: 'BRL',
              underline: Container(
                height: 1,
                color: Colors.amber,
              ),
              items: const [
                DropdownMenuItem(
                  value: 'BRL',
                  child: Text('Real'),
                ),
                DropdownMenuItem(
                  value: 'USD',
                  child: Text('Dólar'),
                ),
              ],
              onChanged: (value) {},
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        const Expanded(
          flex: 2,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.amber),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

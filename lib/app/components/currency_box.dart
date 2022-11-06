import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 65,
              child: DropdownButton(
                  iconEnabledColor: Colors.orange,
                  isExpanded: true,
                  underline: Container(
                    height: 1,
                    color: Colors.orange,
                  ),
                  items: [
                    DropdownMenuItem(
                      child: Text('Real'),
                    ),
                  ],
                  onChanged: (value) {}),
            )),
        const SizedBox(width: 15),
        Expanded(
          flex: 2,
          child: TextField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.orange,
                ),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
        ),
      ],
    );
  }
}

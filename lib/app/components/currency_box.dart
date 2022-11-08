import 'package:flutter/material.dart';
import '../models/currency_model.dart';

class CurrencyBox extends StatelessWidget {

  final List<CurrencyModel>? items;
  final CurrencyModel? selectedItem;
  final TextEditingController? controller;
  final void Function(CurrencyModel? model)? onChanged;

  const CurrencyBox({Key? key, this.items, this.controller, this.onChanged, required this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: SizedBox(
              height: 65,
              child: DropdownButton<CurrencyModel>(
                  iconEnabledColor: Colors.orange,
                  isExpanded: true,
                  value: selectedItem,
                  underline: Container(
                    height: 1,
                    color: Colors.orange,
                  ),
                  items: items!
                      .map((e) => DropdownMenuItem<CurrencyModel>(value: e, child: Text(e.name!)))
                      .toList(),
                  onChanged: onChanged
                ),
            )),
        const SizedBox(width: 15),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
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

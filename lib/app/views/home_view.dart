import 'package:flutter/material.dart';
import '../components/currency_box.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30, 
          right: 30, 
          top: 50, 
          bottom: 20
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 230,
              height: 230,
            ),
            const CurrencyBox(),
            const SizedBox(height: 10),
            const CurrencyBox(),
            const SizedBox(height: 45),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: (){}, 
              child: const Text('CONVERTER'),
            ),
          ],
        ),
      ),
    );
  }
}
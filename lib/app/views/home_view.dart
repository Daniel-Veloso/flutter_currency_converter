import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20, 
          right: 20, 
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
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 65,
                    child: DropdownButton(
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
                      onChanged: (value){}
                    ),
                  )
                ),
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
            ),
            const SizedBox(height: 80),
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
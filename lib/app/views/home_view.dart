import 'package:flutter/material.dart';
import '../components/currency_box.dart';
import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  HomeController? homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 30, 
            right: 30, 
            top: 70, 
            bottom: 20
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo.png',
                width: 230,
                height: 230,
              ),
              const SizedBox(height: 30),
              CurrencyBox(
                selectedItem: homeController!.toCurrency,
                controller: toText,
                items: homeController!.currencies,
                onChanged: (model){
                  setState(() {
                    homeController!.toCurrency = model;
                  });
                },
              ),
              const SizedBox(height: 10),
              CurrencyBox(
                selectedItem: homeController!.fromCurrency,
                controller: fromText,
                items: homeController!.currencies,
                onChanged: (model){
                  setState(() {
                    homeController!.fromCurrency = model;
                  });
                },
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: (){
                  homeController!.convert();
                }, 
                child: const Text('CONVERTER'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
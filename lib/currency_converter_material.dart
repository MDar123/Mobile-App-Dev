import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() => _CurrencyConverter();
}

class _CurrencyConverter extends State<CurrencyConverter> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromARGB(255, 200, 110, 0),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    result.toString(),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        hintText: "please enter amount in rupees",
                        hintStyle:
                            TextStyle(color: Color.fromARGB(13, 24, 32, 35)),
                        prefixIcon: Icon(Icons.monetization_on),
                        filled: true,
                        fillColor: Color.fromARGB(255, 34, 85, 89),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(222, 22, 11, 33),
                              width: 2.0,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            borderSide: BorderSide(
                              color: Color.fromARGB(222, 22, 11, 33),
                              width: 2.0,
                              style: BorderStyle.solid,
                              strokeAlign: BorderSide.strokeAlignOutside,
                            )),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // debugPrint("Pressed");
                      setState(() {
                        result = double.parse(textEditingController.text) / 300;
                      });
                    },
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll<Color>(
                        Color.fromARGB(1, 2, 3, 4),
                      ),
                      fixedSize: WidgetStatePropertyAll<Size>(
                        Size(200, 50),
                      ),
                    ),
                    child: const Text(
                      'convert',
                      style: TextStyle(color: Color.fromARGB(222, 111, 333, 1)),
                    ),
                  ),
                ],
              ),
            )));
  }
}

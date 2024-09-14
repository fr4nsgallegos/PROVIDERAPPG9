import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg9/pages/home_page.dart';
import 'package:providerappg9/provider/animal_provider.dart';

void main() {
  runApp(
    ProviderExample(), // MaterialApp(
    //   home: HomePage(),
    //   debugShowCheckedModeBanner: false,
    // ),
  );
}

class ProviderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PerritoProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

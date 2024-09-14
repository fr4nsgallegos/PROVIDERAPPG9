import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg9/provider/animal_provider.dart';
import 'package:providerappg9/provider/user_provider.dart';

class Home2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerPerrito = Provider.of<PerritoProvider>(context);
    final providerUser = Provider.of<UserProvider>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre Perrito: ${providerPerrito.name}"),
            ElevatedButton(
              onPressed: () {
                providerPerrito.name = "LUCAS";
              },
              child: Text("Cambiar nombre de perro "),
            ),
            Divider(height: 48),
            Text("Nombre Usuario: ${providerUser.name}"),
            ElevatedButton(
              onPressed: () {
                providerUser.name = "Jhonny";
              },
              child: Text("Cambiar nombre de Usuario "),
            ),
          ],
        ),
      ),
    );
  }
}

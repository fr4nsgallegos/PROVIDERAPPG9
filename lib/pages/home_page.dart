import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerappg9/pages/home2_page.dart';
import 'package:providerappg9/provider/animal_provider.dart';
import 'package:providerappg9/provider/user_provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final providerUser = Provider.of<UserProvider>(context);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //FORMA 1 DE CONSUMIR UN PROVIDER
              Consumer<PerritoProvider>(
                builder: (context, perrito, _) => Text(
                  perrito.name,
                  style: TextStyle(
                    fontSize: 50,
                  ),
                ),
              ),

              Divider(
                height: 48,
              ),

              Text(
                "USER: ${providerUser.name}",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home2Page(),
                    ),
                  );
                },
                child: Text("GO HOME 2"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

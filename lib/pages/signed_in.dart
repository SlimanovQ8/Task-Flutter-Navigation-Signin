import 'package:flutter/material.dart';

class SignedIn extends StatelessWidget {
  // Step 5
  const SignedIn({
    Key? key,
    required  this.name,
  }) : super(key: key);

  // Step 6
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            // Step 9
            Text("Welcome $name"),
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 140,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  @override
  String userName = "";
  String password =  "";
  bool valid = true;
  void checkPassword(String UserName, String pass)
  {
    if (pass != '12345')
      {
        setState(() {
          valid = false;
        });

      }
    else {
      setState(() {

        context.go("/SignIn", extra: UserName);
      });
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign in"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                hintText: "Username",
                prefixIcon: Icon(
                  Icons.account_circle,
                  color: Colors.deepPurpleAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController,

              decoration: const InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.key,
                  color: Colors.deepPurpleAccent,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(

            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.deepPurpleAccent),
            ),
            onPressed: () {
              setState(() {
                userName = usernameController.text;
                password = passwordController.text;
              });
              checkPassword(userName, password);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Login"),
            ),
          )
        ],
      ),
    );
  }
}

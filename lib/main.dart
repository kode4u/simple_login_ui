import 'package:flutter/material.dart';

void main() {
  runApp(MyLoginScreen());
}

class MyLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Login Page",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blue,
          elevation: 1,
          shadowColor: Colors.black,
        ),
        body: Container(
          color: Colors.white70,
          margin: const EdgeInsets.only(
            left: 80,
            right: 80,
          ),
          child: Column(
            children: [
              const Spacer(),
              Image.network(
                "https://miro.medium.com/v2/resize:fit:578/1*szmA2b5DQS_U5wAGgHiPQg.png",
                width: 150,
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 8, right: 8, bottom: 0),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  "Forget Password",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: const SizedBox(
                  width: 150,
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 40,
          margin: const EdgeInsets.all(8),
          child: const Center(
            child: Text(
              "New user? Create account",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ),
    );
  }
}

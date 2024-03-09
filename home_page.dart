import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:register_login/login_page.dart';
import 'package:register_login/registration_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Image.asset(
            "assets/welcome image.png",
            height: 240,
          ),
        ),
        const SizedBox(height: 15),
        Column(children: [
          Text(
            'Discover Your',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
          Text(
            'Dream job here',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
            ),
          ),
          const SizedBox(height: 15.0),
          const Text(
            'Explore all the existing job roles based on your',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
          const Text(
            'interests and study major',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
            ),
          ),
        ]),
        const SizedBox(height: 40),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                'Login',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Registration_Page()),
                );
              },
              child: const Text(
                'Register',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ])),
    );
  }
}

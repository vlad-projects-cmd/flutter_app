import 'package:flutter/material.dart';
import 'package:flutter_app/views/pages/login_page.dart';
import 'package:flutter_app/views/pages/register_page.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FittedBox(
                child: Text(
                  'My Little Fridge',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    letterSpacing: 10.0,
                    height: 10.0,
                  ),
                ),
              ),
              const HeroWidget(isWelcomePage: true),
              const SizedBox(height: 10.0),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: const Size(200.0, 40.0),
                ),
                child: const Text('Register'),
              ),
              const SizedBox(height: 10.0),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                style: FilledButton.styleFrom(
                  minimumSize: const Size(200.0, 40.0),
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

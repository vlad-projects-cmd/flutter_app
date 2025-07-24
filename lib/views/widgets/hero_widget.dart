import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HeroWidget extends StatelessWidget {
  final bool isWelcomePage;

  const HeroWidget({super.key, this.isWelcomePage = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: 'hero1',
          child: Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: SizedBox(
              width: double.infinity,
              height: 300.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: isWelcomePage
                    ? Lottie.asset(
                        'assets/lotties/welcome.json',
                        fit: BoxFit.cover,
                      )
                    : Image.asset(
                        'assets/images/background-2.jpg',
                        fit: BoxFit.cover,
                        color: Colors.blue.withOpacity(0.5),
                        colorBlendMode: BlendMode.modulate,
                      ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

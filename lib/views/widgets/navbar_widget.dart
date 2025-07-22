import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:lottie/lottie.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          selectedIndex: selectedPage,
          onDestinationSelected: (int value) {
            print('Selected index: $value');
            selectedPageNotifier.value = value;
          },

          destinations: [
            NavigationDestination(
              icon: Lottie.asset(
                'assets/lotties/pot.json',
                width: 30,
                height: 30,
              ),
              label: 'History',
            ),
            NavigationDestination(
              icon: Lottie.asset(
                'assets/lotties/pan.json',
                width: 40,
                height: 40,
              ),
              label: 'Recs',
            ),
            NavigationDestination(
              icon: Lottie.asset(
                'assets/lotties/cook.json',
                width: 40,
                height: 40,
              ),
              label: 'Overview',
            ),
            NavigationDestination(
              icon: Lottie.asset(
                'assets/lotties/history.json',
                width: 40,
                height: 40,
              ),
              label: 'Search',
            ),
          ],
        );
      },
    );
  }
}

// widget_tree.dart

import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/history_page.dart';
import 'package:flutter_app/views/pages/overview_page.dart';
import 'package:flutter_app/views/pages/recs_page.dart';
import 'package:flutter_app/views/pages/search_page.dart';
import 'package:flutter_app/views/widgets/my_scaffold_with_app_bar.dart';
import 'package:flutter_app/views/widgets/navbar_widget.dart';

final List<Widget> pages = [
  const HistoryPage(),
  const RecsPage(),
  const OverviewPage(),
  const SearchPage(),
];

// widget_tree.dart

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return MyScaffoldWithAppBar(
          body: pages[selectedPage],
          bottomNavigationBar: const NavbarWidget(),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FloatingActionButton(
                onPressed: () => print('Wirtz'),
                child: const Icon(Icons.add),
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';
import 'package:flutter_app/views/pages/history_page.dart';
import 'package:flutter_app/views/pages/overview_page.dart';
import 'package:flutter_app/views/pages/recs_page.dart';
import 'package:flutter_app/views/pages/search_page.dart';
import 'package:flutter_app/views/widgets/my_scaffold_with_app_bar.dart';
import 'package:flutter_app/views/widgets/navbar_widget.dart';

final List<Widget Function()> pageBuilders = [
  () => const HistoryPage(),
  () => const RecsPage(),
  () => const OverviewPage(),
  () => const SearchPage(),
];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, _) {
        print('Rebuilding WidgetTree with index $selectedPage'); // ✅ DEBUG
        return MyScaffoldWithAppBar(
          body: KeyedSubtree(
            key: ValueKey(selectedPage),
            child: pageBuilders[selectedPage](),
          ),
          bottomNavigationBar: const NavbarWidget(),
        );
      },
    );
  }
}

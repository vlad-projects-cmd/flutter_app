import 'package:flutter/material.dart';
import 'package:flutter_app/views/widgets/hero_widget.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(children: [HeroWidget()]),
    );
  }
}

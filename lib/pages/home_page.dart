import 'package:cross_multiply/pages/compound_three_page.dart';
import 'package:cross_multiply/pages/compound_four_page.dart';
import 'package:cross_multiply/pages/simple_page.dart';
import 'package:cross_multiply/utils/theme/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicTheme(),
      home: Scaffold(
        body: PageView(
          controller: pageViewController,
          children: [
            SimplePage(),
            CompoundThreePage(),
            CompoundFourPage(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.replay_outlined,
          ),
        ),
        bottomNavigationBar: AnimatedBuilder(
          animation: pageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: pageViewController.page?.round() ?? 0,
              onTap: (index) {
                pageViewController.jumpToPage(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.looks_one_outlined),
                  label: "simples",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.looks_3_outlined),
                  label: "composta de 3",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.looks_4_outlined),
                  label: "composta de 4",
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

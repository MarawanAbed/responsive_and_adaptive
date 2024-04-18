import 'package:dash_board/body.dart';
import 'package:dash_board/drawer_new.dart';
import 'package:dash_board/left.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.3),
        body: const Row(
          children: [
            Expanded(
              flex: 1,
              child: DrawerNew(),
            ),
            Expanded(
              flex: 2,
              child: Body(),
            ),
            Expanded(
              flex: 1,
              child: Left(),
            ),
          ],
        ),
      ),
    );
  }
}

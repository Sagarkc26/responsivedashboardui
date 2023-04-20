import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:responsivedashboardui/pages/desktop.dart';
import 'package:responsivedashboardui/pages/mobile.dart';
import 'package:responsivedashboardui/pages/tablet.dart';

class DashBoard extends StatelessWidget {
  final Widget mobilescaffold;
  final Widget tablerscaffold;
  final Widget desktopscaffold;
  const DashBoard({
    Key? key,
    required this.mobilescaffold,
    required this.tablerscaffold,
    required this.desktopscaffold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (p1, p2) {
      if (p2.maxWidth < 850) {
        return const MobilePage();
      } else if (p2.maxWidth > 850 && p2.maxWidth < 1100) {
        return const TabletPage();
      } else {
        return const DesktopPage();
      }
    });
  }
}

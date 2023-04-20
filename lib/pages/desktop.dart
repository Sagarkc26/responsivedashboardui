import 'package:flutter/material.dart';
import 'package:responsivedashboardui/components/side_menu.dart';
import 'package:responsivedashboardui/dashboard/dashboard_screen.dart';

class DesktopPage extends StatelessWidget {
  const DesktopPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Expanded(
            child: SideMenu(),
          ),
          Expanded(flex: 5, child: DashboardScreen())
        ],
      )),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final title;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      onTap: press,
      title: Text(title),
    );
  }
}

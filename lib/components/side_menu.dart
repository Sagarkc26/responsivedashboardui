import 'package:flutter/material.dart';
import 'package:responsivedashboardui/pages/desktop.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("images/logo.png"),
            ),
            DrawerListTile(
              title: "Dashboard",
              press: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              press: () {},
            ),
            DrawerListTile(
              title: "Task",
              press: () {},
            ),
            DrawerListTile(
              title: "Documents",
              press: () {},
            ),
            DrawerListTile(
              title: "Store",
              press: () {},
            ),
            DrawerListTile(
              title: "Profile",
              press: () {},
            ),
            DrawerListTile(
              title: "Settings",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

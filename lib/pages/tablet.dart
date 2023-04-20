import 'package:flutter/material.dart';

import '../components/side_menu.dart';
import '../dashboard/dashboard_screen.dart';

class TabletPage extends StatelessWidget {
  const TabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tablet"),
        centerTitle: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile"),
        centerTitle: true,
      ),
      drawer: const Drawer(),
    );
  }
}

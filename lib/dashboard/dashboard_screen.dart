import 'package:flutter/material.dart';
import 'package:responsivedashboardui/screens/constants.dart';

import '../components/headermain.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            const HeaderMain(),
            const SizedBox(
              height: defaultPadding,
            ),
            Row(
              children: [
                Expanded(
                    flex: 5,
                    child: Container(
                      height: 500,
                      color: Colors.white,
                    )),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 500,
                    color: primaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Textfield extends StatelessWidget {
  const Textfield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          fillColor: secondaryColor,
          filled: true,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          suffixIcon: InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(
                defaultPadding * 0.75,
              ),
              margin: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(20)),
              child: const Icon(Icons.search),
            ),
          )),
    );
  }
}

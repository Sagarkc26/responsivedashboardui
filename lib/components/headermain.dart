import 'package:flutter/material.dart';

import '../dashboard/dashboard_screen.dart';
import 'header.dart';

class HeaderMain extends StatelessWidget {
  const HeaderMain({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Dashboard",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(
          flex: 2,
        ),
        const Expanded(child: Textfield()),
        const Header()
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../screens/constants.dart';

class Myfiles extends StatelessWidget {
  const Myfiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: defaultPadding, crossAxisCount: 4),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: secondaryColor, borderRadius: BorderRadius.circular(10)),
        );
      },
    );
  }
}

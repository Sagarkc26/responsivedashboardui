import 'package:flutter/material.dart';

import '../screens/constants.dart';

class StorageinfoCard extends StatelessWidget {
  const StorageinfoCard({
    Key? key,
    required this.title,
    required this.amountoffile,
    required this.noOffile,
  }) : super(key: key);

  final String title, amountoffile;
  final double noOffile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding / 2),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: primaryColor.withOpacity(0.15)),
          borderRadius: BorderRadius.circular(defaultPadding)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text("$noOffile")
            ],
          ),
          Text(amountoffile)
        ],
      ),
    );
  }
}

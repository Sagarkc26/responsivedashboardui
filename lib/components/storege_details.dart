import 'package:flutter/material.dart';
import 'package:responsivedashboardui/components/storage_info_card.dart';

import '../screens/constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Text(
          "Storage Details",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        Chart(),
        StorageinfoCard(
            title: "Documents Files",
            amountoffile: "1359 files",
            noOffile: 1.9),
        StorageinfoCard(
            title: "Meida Files", amountoffile: "1010 files", noOffile: 7.2),
        StorageinfoCard(
            title: "Meida Files", amountoffile: "1010 files", noOffile: 7.2),
        StorageinfoCard(
            title: "Meida Files", amountoffile: "1010 files", noOffile: 7.2),
      ]),
    );
  }
}

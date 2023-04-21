import 'package:flutter/material.dart';
import 'package:responsivedashboardui/dashboard.dart';

import 'package:responsivedashboardui/screens/constants.dart';

import '../components/headermain.dart';
import '../components/my_files.dart';
import '../components/storege_details.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "My Files",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            ElevatedButton.icon(
                                style: TextButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: defaultPadding * 1.15,
                                        vertical: defaultPadding)),
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                                label: const Text("Add New"))
                          ],
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        Column(
                          children: [
                            const Myfiles(),
                            const SizedBox(
                              height: defaultPadding,
                            ),
                            Container(
                              padding: const EdgeInsets.all(defaultPadding),
                              decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Recent files"),
                                    SizedBox(
                                      width: double.infinity,
                                      child: DataTable(columns: const [
                                        DataColumn(
                                          label: Text("File Name"),
                                        ),
                                        DataColumn(
                                          label: Text("Date"),
                                        ),
                                        DataColumn(
                                          label: Text("Size"),
                                        ),
                                      ], rows: [
                                        recentfileDateRow(),
                                        recentfileDateRow(),
                                        recentfileDateRow(),
                                        recentfileDateRow(),
                                        recentfileDateRow(),
                                      ]),
                                    ),
                                    if (DashBoard.isMobile(context))
                                      const SizedBox(
                                        height: defaultPadding,
                                      ),
                                    if (DashBoard.isMobile(context))
                                      const StorageDetails(),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    )),
                if (!DashBoard.isMobile(context))
                  const SizedBox(
                    width: defaultPadding,
                  ),
                if (!DashBoard.isMobile(context))
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  DataRow recentfileDateRow() {
    return const DataRow(cells: [
      DataCell(Text("data")),
      DataCell(Text("data")),
      DataCell(Text("data")),
    ]);
  }
}

import 'package:flutter/material.dart';
import '../models/developer_unique_item.dart';
import '../widgets/developer_item.dart';
import '../constants/colors.dart';

class DeveloperHome extends StatelessWidget {
  DeveloperHome({super.key});

  final developersItem = DeveloperUniqueItem.developerItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 34,
            ),
            const Text(
              "Polular",
              style: TextStyle(
                  color: textColor, fontSize: 44, fontWeight: FontWeight.w800),
            ),
            const Text(
              "Developers",
              style: TextStyle(
                  color: textColor, fontSize: 44, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 17,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Row(children: [
                Icon(Icons.filter_list, color: textColor),
                Text('Filter Developers',
                    style: TextStyle(color: textColor, fontSize: 17))
              ]),
              style: ElevatedButton.styleFrom(
                backgroundColor: secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text("All Developers",
                style: TextStyle(
                    color: textColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              children: [
                for (DeveloperUniqueItem item in developersItem)
                  DeveloperItem(item: item)
              ],
            ))
          ]),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:techlinker/widgets/developer_item.dart';

import '../constants/colors.dart';

class DeveloperHome extends StatelessWidget {
  const DeveloperHome({super.key});

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
            Row(children: const [
              Text("Polular Developers",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700)),
              SizedBox(
                width: 122,
              ),
              Text("See All",
                  style: TextStyle(
                      color: textColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w700))
            ]),
            const SizedBox(
              height: 10,
            ),
            Expanded(
                child: ListView(
              children: [
                DeveloperItem(),
                DeveloperItem(),
                DeveloperItem(),
                DeveloperItem(),
                DeveloperItem(),
                DeveloperItem(),
                DeveloperItem(),
                DeveloperItem(),
                DeveloperItem()
              ],
            ))
          ]),
        ));
  }
}

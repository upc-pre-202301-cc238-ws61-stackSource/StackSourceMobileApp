import 'package:flutter/material.dart';
import 'package:techlinker/screens/filter_developer.dart';
import '../models/developer_unique_item.dart';
import '../widgets/developer_item.dart';
import '../constants/colors.dart';

class DeveloperHome extends StatefulWidget {
  DeveloperHome({super.key});

  @override
  State<DeveloperHome> createState() => _DeveloperHomeState();
}

class _DeveloperHomeState extends State<DeveloperHome> {
  final developersItem = DeveloperUniqueItem.developerItems();
  List<dynamic> selectedSpecialityType = [];

  @override
  Widget build(BuildContext context) {
    final filterDevelopers = developersItem.where((specialzation) {
      return selectedSpecialityType.isEmpty ||
          selectedSpecialityType.contains(specialzation.specialityType);
    }).toList();
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
              onPressed: () async {
                await Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeveloperFilter()))
                    .then((value) => {
                          if (value != null)
                            {
                              setState(() {
                                selectedSpecialityType =
                                    value['selectedSpecialityType'];
                                print(selectedSpecialityType);
                              })
                            }
                        });
              },
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
                child: ListView.builder(
                    itemCount: filterDevelopers.length,
                    itemBuilder: (context, index) {
                      final developer = filterDevelopers[index];
                      return DeveloperItem(
                        item: developer,
                      );
                    }))
          ]),
        ));
  }
}

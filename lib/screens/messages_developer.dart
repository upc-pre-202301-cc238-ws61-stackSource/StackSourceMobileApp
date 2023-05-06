import 'package:flutter/material.dart';
import 'package:techlinker/constants/colors.dart';
import 'package:techlinker/models/developer_unique_item.dart';
import 'package:techlinker/widgets/message_item.dart';

class DeveloperMessage extends StatefulWidget {
  const DeveloperMessage({super.key});

  @override
  State<DeveloperMessage> createState() => _DeveloperMessageState();
}

class _DeveloperMessageState extends State<DeveloperMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 34,
              ),
              const Text(
                "Company",
                style: TextStyle(
                    color: textColor,
                    fontSize: 44,
                    fontWeight: FontWeight.w800),
              ),
              const Text(
                "Messages",
                style: TextStyle(
                    color: textColor,
                    fontSize: 44,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 17,
              ),
              Expanded(
                  child: ListView(
                children: [
                  for (var item in DeveloperUniqueItem.developerItems())
                    MessageItem(item: item),
                ],
              ))
            ],
          ),
        ));
  }
}

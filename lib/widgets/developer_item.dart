import 'package:flutter/material.dart';
import 'package:techlinker/constants/colors.dart';

class DeveloperItem extends StatelessWidget {
  const DeveloperItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, top: 5),
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: primaryColor),
          color: secondaryColor),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://cdn0.iconfinder.com/data/icons/device-and-development-2/512/77_hacker_user_gammer_programmer-512.png',
            height: 64,
            width: 64,
            fit: BoxFit.cover,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'John Doe',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: textColor),
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),
            Row(
              children: [
                for (int i = 0; i < 5; i++)
                  Icon(
                    Icons.star,
                    size: 18,
                    color: Colors.amber,
                  ),
              ],
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '67',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: textColor),
            ),
            Text(
              'points',
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

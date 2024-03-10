import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HeaderOfList extends StatelessWidget {
  final String title;
  final String description;
  const HeaderOfList(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              'View all',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Colors.black87,
                  ),
            ),
          ],
        ),
        Text(
          description,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.grey,
              ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../views/search_view_all.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SearchViewAll()));
          },
          child: const Text("View all",
              style: TextStyle(fontSize: 18, color: Colors.grey)),
        ),
      ],
    );
  }
}

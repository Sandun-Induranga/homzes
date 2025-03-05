import 'package:flutter/material.dart';
import 'package:homzes/core/utils/extensions.dart';

import '../views/home_details_view.dart';

class ListTitle extends StatelessWidget {
  const ListTitle({
    super.key,
    required this.title,
    this.isNeedViewAll = true,
  });

  final String title;
  final bool isNeedViewAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isNeedViewAll ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleLarge,
        ),
        if (isNeedViewAll)
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomeDetailsView(),
              ),
            );
          },
          child: Text(
            "View all",
            style: context.theme.textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}

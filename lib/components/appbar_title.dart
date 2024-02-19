import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  const AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {

    return const Row(
      children: [
        Icon(
          Icons.account_box_outlined,
        ),
        Text(
          " Ethan's Portfolio"
        ),
      ],
    );
  }
}
import 'package:flutter/material.dart';

class PortfolioTitle extends StatelessWidget {
  final double size;
  final String title;
  final IconData icon;
  const PortfolioTitle({super.key, required this.title, required this.icon, required this.size});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon, 
            size: size,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 10,),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: size,
              color: Theme.of(context).colorScheme.primary
            ),
          ),
          const SizedBox(width: 10,),
          Icon(
            icon, 
            size: size,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
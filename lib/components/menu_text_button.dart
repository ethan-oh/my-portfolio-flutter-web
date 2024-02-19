import 'package:flutter/material.dart';

class MenuTextButton extends StatelessWidget {
  final String text;
  const MenuTextButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        textStyle: const TextStyle(
          fontWeight: FontWeight.bold
        )
      ),
      onPressed: () {
        
      }, 
      child: Text(text), // widget.text가 아닌 이유. stateless는 같은 클래스 내에 있어서.
    );
  }
}
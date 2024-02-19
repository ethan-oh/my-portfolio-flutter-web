import 'package:flutter/material.dart';
import 'package:responsive_layout/function/my_function.dart';

class StackBadge extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final double size;

  const StackBadge({
    Key? key,
    required this.label,
    required this.icon,
    required this.color,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 테마 모드를 가져오기 위함
    final ThemeData theme = Theme.of(context);
    final bool isDarkMode = theme.brightness == Brightness.dark;

    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Chip(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            // 다크모드에선 흰 테두리, 라이트모드에선 테두리 없음.
            color: isDarkMode ? Colors.white : Colors.grey,
            width: MyFunc().calcResponsiveSize(context, mobile: 0.6, tablet: 0.8, desktop: 1)!
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: color,
        label: Text(
          label,
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            color: _determineTextColor(color),
            fontSize: size,
          ),
        ),
        avatar: Icon(
          icon,
          color: _determineTextColor(color),
          size: size,
        ),
      ),
    );
  }

  static Color _determineTextColor(Color backgroundColor) {
    final double brightness = backgroundColor.computeLuminance();
    return brightness > 0.5 ? Colors.black : Colors.white;
  }
}

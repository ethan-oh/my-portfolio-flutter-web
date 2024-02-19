import 'package:flutter/material.dart';
import 'package:responsive_layout/components/stack_badge.dart';
import 'package:responsive_layout/data/data.dart';
import 'package:responsive_layout/function/my_function.dart';

class StackList extends StatelessWidget {
  final String type;
  final String title;
  const StackList({super.key, required this.type, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 25),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Wrap(
              // wrap의 가운데정렬. center로는 정렬되지 않는다.
              alignment: WrapAlignment.center,
              children: MyData.stacks[type]!.map<Widget>((stack) {
                return StackBadge(
                  label: stack['label'].toString(),
                  icon: stack['icon'] as IconData,
                  color: stack['color'] as Color,
                  size: MyFunc().calcResponsiveSize(context,
                      mobile: 11, tablet: 13, desktop: 15)!,
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}

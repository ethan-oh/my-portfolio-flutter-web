import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_layout/function/my_function.dart';
import 'package:responsive_layout/model/more.dart';

class MoreBlock extends StatelessWidget {
  final List<More> moreData;
  const MoreBlock({super.key, required this.moreData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'More details?\nPress the below buttons!',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // linkButton을 데이터 개수에 맞게 동적으로 생성
              for(int i=0; i<moreData.length; i++)
                _linkButton(context, moreData[i])
            ],
          ),
        ),
      ],
    );
  }
}

Widget _linkButton(context, More more) {
  return Padding(
    padding: const EdgeInsets.all(6.0),
    child: Container(
      color: Colors.white,
      child: CupertinoButton(
        onPressed: () => MyFunc().launchURL(more.url),
        child: Row(
          children: [
            Icon(
              more.icon,
              color: more.iconColor,
            ),
            Text(
              ' ${more.title}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: MyFunc().calcResponsiveSize(context, mobile: 11, tablet: 14, desktop: 17),
                  color: Colors.black),
            )
          ],
        ),
      ),
    ),
  );
}
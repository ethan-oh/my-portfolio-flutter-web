import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_layout/function/my_function.dart';

class ProfileCard extends StatelessWidget {
  final List profileData;
  const ProfileCard({super.key, required this.profileData});

  @override
  Widget build(BuildContext context) {
    TextStyle responsiveTextStyle({required bool bold}) {
      // 프로필 카드 반응형 글씨 스타일
      return TextStyle(
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        fontSize: ResponsiveValue(
          context,
          defaultValue: 11.0,
          conditionalValues: [
            Condition.largerThan(
              value: 13.0,
              name: MOBILE,
            ),
            Condition.largerThan(
              value: 16.0,
              name: TABLET,
            ),
          ],
        ).value,
      );
    }

    return SizedBox(
      // 프로필 카드 너비
      width: MyFunc()
          .calcResponsiveSize(context, 
            mobile: MediaQuery.of(context).size.width * 0.9, 
            tablet: 500, 
            desktop: 640
          ),
      child: Card(
        shape: Border.all(
          color: Theme.of(context).colorScheme.primary,
          width: 4,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(MyFunc().calcResponsiveSize(context,
                  mobile: 10, tablet: 20, desktop: 30)!),
              child: Image.asset(
                'images/ethan.jpeg',
                // 프로필 사진 너비
                width: MyFunc().calcResponsiveSize(context,
                    mobile: 105, tablet: 150, desktop: 200),
              ),
            ),
            // 프로필 타이틀 컬럼
            SizedBox(
              height: MyFunc().calcResponsiveSize(context,
                  mobile: 130, tablet: 160, desktop: 280),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var entry in profileData)
                    Text(
                      '${entry.key}  :  ',
                      style: responsiveTextStyle(bold: true),
                    ),
                ],
              ),
            ),
            // 프로필 내용 컬럼
            SizedBox(
              height: MyFunc().calcResponsiveSize(context,
                  mobile: 130, tablet: 160, desktop: 280),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var entry in profileData)
                    Text(
                      entry.value,
                      style: responsiveTextStyle(bold: false),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} // End


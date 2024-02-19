import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_layout/components/appbar_title.dart';
import 'package:responsive_layout/components/portfolio_title.dart';
import 'package:responsive_layout/components/profile_card.dart';
import 'package:responsive_layout/components/stack_list.dart';
import 'package:responsive_layout/components/more_block.dart';
import 'package:responsive_layout/data/data.dart';
import 'package:responsive_layout/function/my_function.dart';
import 'package:responsive_layout/main.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // 프로젝트의 개수에 맞게 동적으로 projectTile을 그려주는 함수 (ResponsiveRowColumn 타입의 List)
    List<ResponsiveRowColumn> projectRows =
        MyFunc().generateProjectRows(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        centerTitle: true,
        title: const AppBarTitle(),
        leading: ResponsiveVisibility(
          hiddenConditions: [
            Condition.largerThan(value: false, name: TABLET),
          ],
          child: IconButton(
            onPressed: () {
              //
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        actions: [
          ResponsiveVisibility(
            hiddenConditions: [
              Condition.equals(
                name: MOBILE,
                value: false,
              ),
            ],
            child: IconButton(
              onPressed: () => MyFunc().launchURL('mailto:${MyData.emailAddress}'),
              icon: const Icon(Icons.mark_email_unread_rounded),
            ),
          ),
          // 다크모드, 라이트모드 변경 버튼
          IconButton(
              onPressed: () {
                MyApp.themeNotifier.value =
                    MyApp.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              },
              icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode))
        ],
      ),
      //////////////////////  BODY  ///////////////////////////
      body: ListView(
        children: [
          PortfolioTitle(
            title: 'Profile',
            icon: Icons.account_box,
            size: MyFunc().calcResponsiveSize(context,
                mobile: 20, tablet: 25, desktop: 30)!,
          ),
          // 프로필카드
          const Center(
            child: ProfileCard(profileData: MyData.profile),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(),
          // 기술스택
          Center(
            child: Column(
              children: [
                PortfolioTitle(
                  title: 'Tech Stack',
                  icon: Icons.construction,
                  size: MyFunc().calcResponsiveSize(context,
                      mobile: 20, tablet: 25, desktop: 30)!,
                ),
                const StackList(
                  type: 'language',
                  title: 'Language',
                ),
                const StackList(
                  type: 'framework',
                  title: 'Framework',
                ),
                const StackList(
                  type: 'library',
                  title: 'Library',
                ),
                const StackList(
                  type: 'server',
                  title: 'Server',
                ),
                const StackList(
                  type: 'database',
                  title: 'Database',
                ),
                const StackList(
                  type: 'ide',
                  title: 'IDE',
                ),
                const StackList(
                  type: 'tools',
                  title: 'Tools',
                ),
              ],
            ),
          ),
          const Divider(),
          PortfolioTitle(
            title: 'Project',
            icon: Icons.redeem,
            size: MyFunc().calcResponsiveSize(context,
                mobile: 20, tablet: 25, desktop: 30)!,
          ),
          // 프로젝트 리스트
          Column(
            children: projectRows,
          ),
          //////////////////
          const SizedBox(
            height: 10,
          ),
          ////////////////
          const Divider(),
          ////////////////
          PortfolioTitle(
            title: 'More',
            icon: Icons.more,
            size: MyFunc().calcResponsiveSize(context,
                mobile: 20, tablet: 25, desktop: 30)!,
          ),
          //////////////// 더보기
          Center(child: MoreBlock(moreData: MyData.mores)),
          ////////////////
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

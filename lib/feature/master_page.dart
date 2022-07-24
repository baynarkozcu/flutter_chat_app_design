import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constants/app/app_colors.dart';
import '../../../core/constants/enums/tabbar_view_enums.dart';
import 'home/view/home_view.dart';

class MasterPage extends StatefulWidget {
  const MasterPage({Key? key}) : super(key: key);
  @override
  State<MasterPage> createState() => _HomeViewState();
}

class _HomeViewState extends State<MasterPage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: TabbarViewEnums.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/images/logo.svg",
                height: 30,
                color: AppColors.primary,
              ),
              Text('Baynarkozcu Chat App', style: context.theme.textTheme.headline1),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 5,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            controller: _tabController,
            tabs: TabbarViewEnums.values
                .map(
                  (tab) => Tab(
                    icon: Icon(tab.iconData),
                  ),
                )
                .toList(),
            labelColor: AppColors.primary,
            unselectedLabelColor: AppColors.text,
          ),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            Container(
              color: Colors.yellow,
            ),
            const HomeView(),
            Container(
              color: Colors.purple,
            ),
          ],
        ));
  }
}

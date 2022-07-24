import 'package:chat_app_design/core/extensions/theme_extensions.dart';
import 'package:flutter/material.dart';

import '../../../components/settings_card.dart';
import '../../../core/constants/app/app_colors.dart';
import '../../../core/constants/enums/theme_enums.dart';
import '../../../core/init/theme/theme_manager.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: [
          const _SettingsUserCard(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                SettingsCard(
                  color: AppColors.primary,
                  title: 'Dark Mode',
                  description: 'Enable dark mode',
                  icon: Icons.dark_mode,
                  widget: Switch(
                    value: ThemeManager.instance.currentThemeEnum == ThemeEnums.DARK,
                    onChanged: (value) => ThemeManager.instance.changeTheme(
                        ThemeManager.instance.currentThemeEnum == ThemeEnums.LIGHT
                            ? ThemeEnums.DARK
                            : ThemeEnums.LIGHT),
                  ),
                ),
                const SettingsCard(
                  color: AppColors.alert,
                  title: 'Privacy',
                  description: 'Lock Baynarkozcu improve the privacy',
                  icon: Icons.fingerprint,
                  widget: Icon(Icons.keyboard_arrow_right_sharp, size: 36),
                ),
                const SettingsCard(
                  color: Colors.amber,
                  title: 'Appearance',
                  description: 'Change the appearance of the app',
                  icon: Icons.app_registration_outlined,
                  widget: Icon(Icons.keyboard_arrow_right_sharp, size: 36),
                  isLast: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Account",
              style: context.theme.textTheme.headline1?.copyWith(
                color: AppColors.primary,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: const [
                SettingsCard(
                  color: Colors.transparent,
                  title: 'Logout',
                  description: 'Logout from the app',
                  icon: Icons.exit_to_app,
                  widget: Icon(Icons.keyboard_arrow_right_sharp, size: 36),
                ),
                SettingsCard(
                  color: Colors.transparent,
                  title: 'Change Email',
                  description: 'Change your email address',
                  icon: Icons.cached_outlined,
                  widget: Icon(Icons.keyboard_arrow_right_sharp, size: 36),
                  isLast: true,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _SettingsUserCard extends StatelessWidget {
  const _SettingsUserCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 24),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/39.jpg'),
            ),
          ),
          FittedBox(
            child: Text(
              "Linzi\nCoulson",
              style: context.theme.textTheme.headline1?.copyWith(
                color: Colors.black54,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

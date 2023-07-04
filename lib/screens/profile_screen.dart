import 'package:bejo/components/profile_menu.dart';
import 'package:bejo/components/profile_pic.dart';
import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            const ProfilePic(),
            const SizedBox(height: 25),
            ProfileMenu(
              text: "My Account",
              icon: CarbonIcons.user,
              press: () => {},
            ),
            ProfileMenu(
              text: "Notifications",
              icon: CarbonIcons.notification,
              press: () {},
            ),
            ProfileMenu(
              text: "Settings",
              icon: CarbonIcons.settings,
              press: () {},
            ),
            ProfileMenu(
              text: "Help Center",
              icon: CarbonIcons.help,
              press: () {},
            ),
            ProfileMenu(
              text: "Log Out",
              icon: CarbonIcons.logout,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

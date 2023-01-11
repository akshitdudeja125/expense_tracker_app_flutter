import 'package:expense_tracker/models/user_model.dart';
import 'package:expense_tracker/utils.dart';
import 'package:expense_tracker/widgets/settings_tile.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(defaultSpacing),
        child: Column(
          children: [
            Center(
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(userData.profileImage),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: defaultSpacing / 2),
                    child: Text(
                      userData.name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: defaultSpacing / 2),
                    // child: Text("jacob.timberline@gmail.com"),
                    child: Text(
                      userData.email,
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                  ),
                  const Chip(
                    label: Text("Edit profile"),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    SettingsTile(
                      imageUrl: "assets/icons/wallet.png",
                      title: "My Wallet",
                      subtitle: "Manage your wallet",
                    ),
                    SettingsTile(
                      imageUrl: "assets/icons/location-1.png",
                      title: "My Account",
                    ),
                    SettingsTile(
                      imageUrl: "assets/icons/bell.png",
                      title: "Notification",
                    ),
                    SettingsTile(
                      imageUrl: "assets/icons/lock-on.png",
                      title: "Privacy",
                    ),
                    SettingsTile(
                      imageUrl: "assets/icons/info-circle.png",
                      title: "About",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
}

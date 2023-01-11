import 'package:expense_tracker/utils.dart';
import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  String? subtitle;
  SettingsTile({
    super.key,
    required this.title,
    this.subtitle = "",
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: subtitle == ""
            ? const EdgeInsets.symmetric(horizontal: 8)
            : const EdgeInsets.all(8),
        child: Image.asset(imageUrl),
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      subtitle: Text(
        subtitle ?? "",
        style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: fontHeading,
            ),
      ),
      trailing: const Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultSpacing),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 20,
          color: Colors.black26,
        ),
      ),
    );
  }
}

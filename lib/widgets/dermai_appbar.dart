import 'package:derm_ai_scan/screens/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DermaiAppBar extends StatelessWidget {
  final String title, leadingIcon;
  final Widget? trailing;
  final Function onLeading;
  const DermaiAppBar({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.trailing,
    required this.onLeading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(
              leadingIcon,
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          trailing ??
              const SizedBox(
                width: 50,
              ),
        ],
      ),
    );
  }
}

class AppBar3 extends AppBar {
  AppBar3({
    super.key,
    super.leading,
    super.automaticallyImplyLeading = true,
    super.title,
    super.actions,
    super.flexibleSpace,
    super.bottom,
    super.elevation,
    super.scrolledUnderElevation,
    super.notificationPredicate = defaultScrollNotificationPredicate,
    super.shadowColor,
    super.surfaceTintColor,
    super.shape,
    super.backgroundColor,
    super.foregroundColor,
  });
}

class AppBar2 extends StatelessWidget {
  final String title, leadingIcon;
  final Widget? trailing;
  final Function onLeading;
  const AppBar2({
    super.key,
    required this.title,
    required this.leadingIcon,
    this.trailing,
    required this.onLeading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: InkWell(
          onTap: () {},
          child: SvgPicture.asset(
            leadingIcon,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        actions: [
          trailing ??
              const SizedBox(
                width: 50,
              ),
        ]);
  }
}

import 'package:flutter/material.dart';

import '../theme/colors_theme.dart';


class AppBarLayout extends StatelessWidget implements PreferredSizeWidget {
  final bool isSearch;
  final Function()? onTapAvatar;
  final Function()? onPressedIcon;

  const AppBarLayout({
    Key? key,
    required this.isSearch,
    this.onTapAvatar,
    this.onPressedIcon,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(isSearch ? 160 : 100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsTheme.primary,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: Container(),
    );
  }
}

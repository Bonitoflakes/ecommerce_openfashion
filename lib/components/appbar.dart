// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor;

  const CustomAppBar({super.key, this.backgroundColor = Colors.white});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      elevation: 0,
      // automaticallyImplyLeading: false,
      // titleSpacing: 0,
      // leadingWidth: 20,
      toolbarHeight: 60,
      leading: IconButton(
        padding: const EdgeInsets.all(0),
        iconSize: 24,
        icon: SvgPicture.asset('assets/images/Menu.svg'),
        onPressed: () => print('helloworld'),
      ),
      title: SvgPicture.asset(
        'assets/images/Logo.svg',
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              iconSize: 24,
              icon: SvgPicture.asset('assets/images/shoppingbag.svg'),
              onPressed: () => print('helloworld'),
            ),
            IconButton(
              iconSize: 24,
              icon: SvgPicture.asset('assets/images/Search.svg'),
              onPressed: () => print('helloworld'),
            ),
          ],
        ),
      ],
    );
  }
}

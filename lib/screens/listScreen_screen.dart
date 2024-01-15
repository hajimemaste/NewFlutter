import 'package:flutter/material.dart';

import '../layouts/appbar_layout.dart';
import '../layouts/navigator_layout.dart';
import 'chat_Screen.dart';
import 'listStudent_Screen.dart';
import 'profile_Screen.dart';
import 'settings_Screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  List pages = [const ChatScreen(), const ListStudentScreen(), const SettingsScreen(), const ProfileScreen()];

  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void onTapNavigatorBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarLayout(isSearch: true),
      body: pages[currentIndex],
      bottomNavigationBar: NavigatorLayout(
        currentIndex: currentIndex,
        onTapNavigatorBar: onTapNavigatorBar,
      ),
    );
  }
}

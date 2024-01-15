import 'package:flutter/material.dart';

import '../theme/colors_theme.dart';
import '../theme/typography_theme.dart';

class ListStudentScreen extends StatefulWidget {
  const ListStudentScreen({super.key});

  @override
  State<ListStudentScreen> createState() => _ListStudentScreenState();
}

class _ListStudentScreenState extends State<ListStudentScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ListStudent Screen'),
      ),
    );
  }
}

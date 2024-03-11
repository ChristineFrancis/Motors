import 'package:carpro/mywidget/appBar.dart';
import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),

        child: MyAppBar(appbarText: 'Setting' ,), ),
      body: Container(),
    );
  }
}
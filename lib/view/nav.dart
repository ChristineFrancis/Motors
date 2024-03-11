/*import 'package:cars/controller/bottomNavigationBarController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
   Widget build(BuildContext context) {
    BottomNavBar controller=Get.put(BottomNavBar());
    return Scaffold(
      body: Obx(() => controller.screens[currentIndex]),
      //_screens[currentIndex]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: changeTabIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Screen 1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Screen 2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Screen 3',
            ),
          ],
        ),
      ),
    );
   }}*/
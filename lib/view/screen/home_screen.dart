import 'package:ecommerce/controller/homescreen_controller.dart';
import 'package:ecommerce/core/constant/color.dart';

import 'package:ecommerce/view/widget/home/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
      builder: (controller) {
        return Scaffold(


          bottomNavigationBar: BottomAppBar(
            color: AppColor.secondary,
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ...List.generate(
                  controller.pages.length,
                  (index)=>
                                  // Left side buttons
                CustomIconButton(
                  onPressed: () {
                    controller.changePage(index);
                  },
                  icon: controller.bottomItems[index]['icon']!,
                  color: controller.currentIndex == index ? AppColor.background :Colors.black,
                ),
                ),

                // Spacer to create space for FAB
                

              ],
            ),
          ),

          body:
           controller.pages[controller.currentIndex],
        );
      },
    );
  }
}

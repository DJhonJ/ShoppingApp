import 'package:f_shopping_app_r2_template/ui/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import 'package:f_shopping_app_r2_template/ui/controllers/shopping_controller.dart';
import 'package:get/get.dart';
import '../app_theme/app_theme.dart';

class ShoppingCart extends GetView<ShoppingController> {
  const ShoppingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProfilePage()),
      child: Badge(
          badgeContent: Obx(() => Text(controller.quantityProducts.toString(),
              style: const TextStyle(color: Colors.white))),
          badgeColor: AppTheme.accent,
          position: BadgePosition.bottomStart(bottom: 10),
          child: const Icon(Icons.shopping_cart)
      )
    );
  }
}

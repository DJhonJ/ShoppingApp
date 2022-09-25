import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/shopping_controller.dart';

class CartTotal extends GetView<ShoppingController> {
  const CartTotal({Key? key}) : super(key: key);

  //final ShoppingController shoppingController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Text('Total \$ ${controller.total}',
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 20.0,
              color: Colors.blueGrey,
              letterSpacing: 2.0,
              fontWeight: FontWeight.w400));
    });
  }
}

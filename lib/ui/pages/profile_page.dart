import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/product.dart';
import 'package:f_shopping_app_r2_template/ui/controllers/shopping_controller.dart';
import '../app_theme/app_theme.dart';

class ProfilePage extends GetView<ShoppingController> {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                  child: Text(
                    'Total \$ ${controller.total}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.blueGrey,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w400),
                  )),
              Expanded(
                  child: ListView.separated(
                itemCount: controller.productsSelected.length,
                itemBuilder: (context, index) {
                  return _itemSelected(
                      controller.productsSelected[index], index);
                },
                separatorBuilder: (_, __) => const Divider(),
              )),
              ElevatedButton(
                  onPressed: () => controller.reset(),
                  style: ElevatedButton.styleFrom(
                    primary: AppTheme.accent,
                    minimumSize: const Size.fromHeight(40), // NEW
                  ),
                  child: const Text("VACIAR CARRO"))
            ],
          );
        }),
      )),
    );
  }

  Widget _itemSelected(Product product, int index) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Flexible(flex: 1, fit: FlexFit.tight, child: Text(product.name)),
      Flexible(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
                flex: 1,
                child: IconButton(
                    onPressed: () => controller
                        .addProduct(controller.productsSelected[index].id),
                    icon: const Icon(Icons.add))),
            Flexible(
                flex: 1,
                child: Text(
                    controller.productsSelected[index].quantity.toString())),
            Flexible(
                flex: 1,
                child: IconButton(
                  onPressed: () => controller
                      .removeProduct(controller.productsSelected[index].id),
                  icon: const Icon(Icons.remove),
                ))
          ],
        ),
      ),
      Flexible(flex: 1, child: Text(product.price.toString()))
    ]);
  }
}

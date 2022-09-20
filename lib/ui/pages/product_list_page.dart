import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/product.dart';
import '../Widgets/banner.dart';
import '../controllers/shopping_controller.dart';

class ProductListPage extends GetView<ShoppingController> {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Product product;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [const CustomBanner(50), customAppBar()],
            ),
            Obx(() {
              return Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: controller.products.length,
                    itemBuilder: (context, index) {
                      product = controller.products[index];
                      return _row(controller.products[index], index);
                    }),
              );
            })
          ],
        ),
      ),
    );
  }

  Widget customAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _row(Product product, int index) {
    return _card(product, index);
  }

  Widget _card(Product product, int index) {
    return Card(
      margin: const EdgeInsets.all(4.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(product.name),
        Text(product.price.toString()),
        Column(
          children: [
            IconButton(
                onPressed: () {
                  controller.agregarProducto(controller.products[index].id);
                },
                icon: const Icon(Icons.arrow_upward)),
            IconButton(
                onPressed: () {
                  controller.quitarProducto(controller.products[index].id);
                },
                icon: const Icon(Icons.arrow_downward))
          ],
        ),
        Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Quantity"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(controller.products[index].quantity.toString()),
            ),
          ],
        )
      ]),
    );
  }
}

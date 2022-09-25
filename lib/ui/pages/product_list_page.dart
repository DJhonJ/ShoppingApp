import 'package:f_shopping_app_r2_template/domain/type_product.dart';
import 'package:f_shopping_app_r2_template/ui/widgets/shopping_cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/product.dart';
import '../app_theme/app_theme.dart';
import '../controllers/shopping_controller.dart';

class ProductListPage extends GetView<ShoppingController> {
  const ProductListPage({Key? key, required this.typeProduct})
      : super(key: key);

  final TypeProduct typeProduct;

  @override
  Widget build(BuildContext context) {
    controller.onLoadProducts(typeProduct.id);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(typeProduct.name),
        actions: const [ShoppingCart()],
      ),
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: const Text("¿Qué productos vas a llevar?")),
                Expanded(
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                          childAspectRatio: 1.2
                      ),
                      itemCount: controller.products.length,
                      itemBuilder: (context, index) {
                        // product = controller.products[index];
                        return Card(
                          elevation: 0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 3,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                          controller.products[index].name,
                                          textAlign: TextAlign.center,
                                      ),
                                      Text("\$ ${controller.products[index].price.toString()}",
                                          textAlign: TextAlign.center
                                      ),
                                    ],
                                  )
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => controller.addProduct(controller.products[index].id),
                                  style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.vertical(top: Radius.zero, bottom: Radius.circular(5.0))
                                      ),
                                      primary: AppTheme.primary,
                                      minimumSize: const Size.fromHeight(20)
                                  ),

                                  child: const Text('Agregar')
                                  ),
                                )
                            ]
                          )
                        );
                      }),
                )
              ],
            )),
      ),
    );
  }

  // Widget _row(Product product, int index) {
  //   return _card(product, index);
  // }
  //
  // Widget _card(Product product, int index) {
  //   return Card(
  //     margin: const EdgeInsets.all(4.0),
  //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
  //       Text(product.name),
  //       Text(product.price.toString()),
  //       Column(
  //         children: [
  //           IconButton(
  //               onPressed: () {
  //                 controller.addProduct(controller.products[index].id);
  //               },
  //               icon: const Icon(Icons.arrow_upward)),
  //           IconButton(
  //               onPressed: () {
  //                 controller.removeProduct(controller.products[index].id);
  //               },
  //               icon: const Icon(Icons.arrow_downward))
  //         ],
  //       ),
  //       Column(
  //         children: [
  //           const Padding(
  //             padding: EdgeInsets.all(8.0),
  //             child: Text("Quantity"),
  //           ),
  //           Padding(
  //             padding: const EdgeInsets.all(8.0),
  //             child: Text(controller.products[index].quantity.toString()),
  //           ),
  //         ],
  //       )
  //     ]),
  //   );
  // }
}

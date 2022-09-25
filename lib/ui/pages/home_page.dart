import 'package:f_shopping_app_r2_template/ui/pages/product_list_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/shopping_cart.dart';
import '../../domain/products.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Super Market"),
          actions: const [ShoppingCart()],
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: const Text("¿Qué tipo de producto deseas?"),
                    ),
                    Flexible(
                      child: GridView.builder(
                          itemCount: type_products.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.8,
                              crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0
                          ),
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () => Get.to(() => ProductListPage(typeProduct: type_products[index])),
                              child: Card(
                                  elevation: 0.6,
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                      alignment: Alignment.center,
                                      child: Text(type_products[index].name, textAlign: TextAlign.center)
                                  )
                              )
                            );
                          }),
                    )
                  ],
                )
            )
        )
    );
  }
}
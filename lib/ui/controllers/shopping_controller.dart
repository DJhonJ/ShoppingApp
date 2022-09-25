import 'package:f_shopping_app_r2_template/usecases/count_quantity_usecase.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../domain/products.dart';
import '../../domain/product.dart';
import '../../usecases/calculate_total_usecase.dart';

class ShoppingController extends GetxController {
  final RxList<Product> _products = <Product>[].obs;//los productos actuales
  final RxList<Product> _productsSelected = <Product>[].obs;
  final RxInt _total = 0.obs;
  final RxInt _quantityProducts = 0.obs;

  List<Product> get products => _products.value;
  List<Product> get productsSelected => _productsSelected.value;
  int get total  => _total.value;
  int get quantityProducts => _quantityProducts.value;

  // @override
  // void onInit() {
  //   super.onInit();
  //   // los dos elementos que vamos a tener en la tienda
  //   _products.value = products_domain;
  // }

  void onLoadProducts(int typeProductId) {
    _products.value = products_domain.where((product) => product.typeProductId == typeProductId).toList();
  }

  void calculateTotal() {
    _total.value = CalculateTotalUseCase.invoke(_productsSelected);
    _quantityProducts.value = CountQuantityUseCase.invoke(_productsSelected);
  }

  void addProduct(int id) {
    logInfo('addProduct $id');

    _change(id, true);
  }

  void removeProduct(int id) {
    logInfo('removeProduct $id');

    _change(id, false);
  }

  void reset() {
    _productsSelected.clear();
    _total.value = 0;
    _quantityProducts.value = 0;
  }

  void _change(int id, bool add) {
    Product product = products.firstWhere((element) => element.id == id, orElse: () => Product(-1, "", 0, 0));

    if (product.id != -1) {
      if (add) {
        product.quantity += 1;
      } else {
        if (product.quantity >= 0) {
          product.quantity -= 1;
        }
      }

      int index = _productsSelected.indexOf(product);
      if (_productsSelected.isNotEmpty && _productsSelected.where((p) => p.id == product.id).isNotEmpty) {
        _productsSelected[index] = product;
      } else {
        _productsSelected.add(product);
      }

      if (product.quantity == 0) {
        _productsSelected.removeAt(index);
      }

      calculateTotal();
    }
  }
}

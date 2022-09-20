import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import '../../domain/product.dart';
import '../../usecases/calcular_total_usecase.dart';
import '../../usecases/cambiar_cantidad_producto_usecase.dart';

class ShoppingController extends GetxController {
  final RxList<Product> _products = <Product>[].obs; // lista de productos
  final RxInt _total = 0.obs; // el valor total de la compra

  int get total  => _total.value;
  List<Product> get products => _products.value;

  @override
  void onInit() {
    super.onInit();
    // los dos elementos que vamos a tener en la tienda
    products.add(Product(1, "Toy car", 10));
    products.add(Product(2, "Toy house", 20));
  }

  void calcularTotal() {
    _total.value = CalcularTotalUseCase.invoke(products);
  }

  void agregarProducto(int id) {
    logInfo('agregarProducto $id');

    _change(id, true);
  }

  void quitarProducto(int id) {
    logInfo('quitarProducto $id');

    _change(id, false);
  }

  void _change(int id, bool add) {
    Map<String, dynamic> result = CambiarCantidadProductoUseCase.invoke(products, id, add);

    if (result["index"] > -1) {
      int index = result["index"];

      _products[index] = result["product"];
      calcularTotal();
    }
  }
}

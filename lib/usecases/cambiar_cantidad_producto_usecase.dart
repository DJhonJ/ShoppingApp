import '../domain/product.dart';

class CambiarCantidadProductoUseCase {
  /**
   * Agrega o remueve elementos de un List<Product>. Retorna en caso exitoso el producto modificado.
   */
  static Map<String, dynamic> invoke(List<Product> products, int id, bool add) {
    Product product = products.firstWhere((element) => element.id == id, orElse: () => Product(-1, "", 0));

    if (product.id != -1) {
      if (add) {
        product.quantity += 1;
      } else {
        product.quantity -= 1;
      }

      int index = products.indexOf(product);

      return {
        "index": index,
        "product": product
      };
    }

    return {
      "index": -1,
      "product": product
    };
  }
}
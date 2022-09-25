import '../domain/product.dart';

class CountQuantityUseCase {
  static int invoke(List<Product> products) {
    int quantity = 0;

    if (products.isNotEmpty) {
      for (var element in products) {
        quantity += element.quantity;
      }
    }

    return quantity;
  }
}
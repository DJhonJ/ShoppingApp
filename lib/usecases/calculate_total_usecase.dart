import '../domain/product.dart';

class CalculateTotalUseCase {
  static int invoke(List<Product> products) {
    int total = 0;

    if (products.isNotEmpty) {
      for (var element in products) {
        total += element.price * element.quantity;
      }
    }

    return total;
  }
}
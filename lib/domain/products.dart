import 'product.dart';
import 'type_product.dart';

final List<Product> products_domain = [
  Product(1, "Maíz dulce", 4950, 1),
  Product(2, "Arroz", 10740, 1),
  Product(3, "Salsa picante", 9650, 1),
  Product(4, "Sal", 1900, 1),
  Product(5, "Café", 11990, 1),
  Product(6, "Harina de Maíz", 2000, 1),
  Product(7, "Azucar", 10000, 1),
  Product(8, "Aceite de Soya", 30392, 1),

  //desayuno
  Product(9, "Queso Crema", 6500, 2),
  Product(10, "Queso Parmesano", 7650, 2),
  Product(11, "Chocolate de mesa", 7500, 2),
  Product(12, "Avena", 2590, 2),
  Product(13, "Mantequilla",2490, 2),
  Product(14, "Yogurt", 7312, 2),

  //medicamentos
  Product(15, "Dolex Forte - tabletas", 16840, 3),
  Product(16, "Pedialyte", 5240, 3),
  Product(17, "Gaviscon", 23440, 3),
  Product(18, "Buscapina", 7680, 3),
  Product(19, "Advil", 17600, 3),
  Product(20, "Acetaminofén", 12400, 3),
  Product(20, "Jarabe", 16000, 3),

  //aseo del hogar
  Product(21, "Detergente - polvo", 10000, 4),
  Product(22, "Papel higiénico", 16900, 4),
  Product(23, "Cepillo para lavar", 4550, 4),
  Product(24, "Detergente - líquido", 14000, 4),
  Product(25, "Jabón para lavar", 5220, 4),
  Product(26, "Clorox", 4290, 4),

  //verduras
  Product(27, "Aguacate", 2137, 5),
  Product(28, "Zanahoria", 1000, 5),
  Product(29, "Cebolla", 500, 5),
  Product(30, "Manzana", 2124, 5),
  Product(31, "Mango", 1467, 5),
  Product(32, "Naranja", 700, 5),
  Product(33, "Pera", 1500, 5),
  Product(34, "Tomate de árbol", 1500, 5),
  Product(35, "Yuca", 1655, 5),
  Product(36, "Apio", 1000, 5),

  //bebidas
  Product(37, "Colombiana", 3200, 6),
  Product(37, "Postobón manzana", 2500, 6),
  Product(37, "Pony", 5000, 6),
  Product(38, "Pepsi", 3250, 6),
  Product(39, "Agua", 2500, 6),
  Product(40, "Nectar california", 13390, 6),
  Product(41, "Jugo hit - pack", 12000, 6),
  Product(42, "Tampico", 6700, 6),
  Product(43, "Red bull", 5400, 6),
  Product(43, "Hatsu", 4050, 6),

  //carne, pollo
  Product(44, "Carne molida", 20980, 7),
  Product(45, "Pechuga pollo", 16900, 7),
  Product(46, "Mojarra roja", 2500000, 7),
  Product(47, "Costilla", 8483, 7),
  Product(48, "Chuleta", 13500, 7),
  Product(49, "Carne de res", 28500, 7),
  Product(50, "Mojarra", 2000000, 7),
  Product(51, "Pollo entero", 109000, 7),

  //huevos, derivados lacteos
  Product(52, "Leche x6", 17640, 8),
  Product(53, "Cartón Huevos", 16450, 8),
  Product(54, "Queso mozzarella", 20200, 8),
  Product(55, "Yogurt x8", 7125, 8),


  //panaderia
  Product(56, "Pan francés", 3500, 9),
  Product(57, "Pan con Queso", 6400, 9),
  Product(58, "Pan Integral", 5000, 9),
  Product(59, "Pan Piñita", 3500, 9),
  Product(60, "Ponqué chocorramo", 7520, 9),
  Product(61, "Ponqué gala", 7440, 9),
];

final List<TypeProduct> type_products = [
  TypeProduct(1, "Despensa"),
  TypeProduct(2, "Desayuno"),
  TypeProduct(3, "Medicamentos"),
  TypeProduct(4, "Aseo del hogar"),
  TypeProduct(5, "Frutas y verduras"),
  TypeProduct(6, "Bebidas"),
  TypeProduct(7, "Carne, Pollo, Pescao'"),
  TypeProduct(8, "Huevos y derivados lácteos"),
  TypeProduct(9, "Panaderia"),
];
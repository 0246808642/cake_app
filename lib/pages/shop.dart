import 'package:cake_shop/models/food.dart';

class Shop {
  // food menu
  final List<Food> _foodMenu = [
    // strawberry cake
    Food(
      name: "Bolo De Chocolate",
      price: "20.00",
      imagePath: "lib/assets/WhatsApp Image 2025-07-07 at 16.39.26.png",
      description:
          "🍫✨ Bolo de Chocolate\nPuro sabor e intensidade! Feito com massa macia e um delicioso recheio de chocolate cremoso, esse bolo é a escolha perfeita para os verdadeiros amantes do cacau. Cobertura rica e irresistível que derrete na boca. Ideal para adoçar qualquer momento especial!",
      rating: "5.0",
    ),

    // chocolate cake
    Food(
      name: "Dois Amores",
      price: "22.00",
      imagePath: "lib/assets/WhatsApp Image 2025-07-07 at 16.38.30.png",
      description:
          "🍫❤️ Bolo Dois Amores\nUma combinação irresistível de sabores! Metade chocolate, metade leite condensado, esse bolo é perfeito para quem não consegue escolher um só amor. Massa fofinha, recheio cremoso e cobertura de dar água na boca. Ideal para surpreender em qualquer ocasião!",
      rating: "4.9",
    ),
  ];

  // costumer cart
  List<Food> _cart = [];

  // getter methods
   List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
  }
}

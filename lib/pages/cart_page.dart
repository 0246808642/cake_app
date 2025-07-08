import 'package:cake_shop/components/button.dart';
import 'package:cake_shop/models/food.dart';
import 'package:cake_shop/pages/shop.dart';
import 'package:cake_shop/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

 // Método para remover item do carrinho
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();

    shop.removeToCart(food);
 
  }
    @override
    Widget build(BuildContext context) {
      
      return Consumer<Shop>(
        builder: (context, value, child) => Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            title: const Text("Meu carrinho"),
            elevation: 0,
            backgroundColor: primaryColor,
          ),
          body: Column(
            children: [
              // Lista de itens do carrinho
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: (context, index) {
                    // Pega o item do carrinho
                    final Food food = value.cart[index];
                    final String foodName = food.name;
                    final String foodPrice = food.price;

                    return Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      margin: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      child: ListTile(
                        title: Text(
                          foodName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        subtitle: Text(
                          foodPrice,
                          style: TextStyle(color: Colors.grey[200]),
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () => removeFromCart(food, context),
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Botão de pagamento
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: MyButton(
                  text: "Pague agora",
                  onTap: () {
                    // Implementar lógica de pagamento
                  },
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      );
    }
  }


import 'package:flutter/material.dart';
import 'package:pizza_menu/menu_item.dart';
import 'package:pizza_menu/pizza_data.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza Menu"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                //outro jeito de fazer é através do map e coloca no children = pizzaData.map(pizza) => PizzaCard(pizza:pizza)).toList(),
                children: _buildPizzas(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: ElevatedButton(
            onPressed: () {},
             child: Text("Order Now!")
             ),
          )
        ],
      ),
    );
  }

  List<MenuCard> _buildPizzas() {
    //mapeamento do objeto a para o objeto b
    //Pizza(modelo) => PizzaCard (widegt)
    List<MenuCard> pizzas = [];
    for (var pizza in pizzaData) {
      pizzas.add(MenuCard(pizza: pizza));
    }
    return pizzas;
  }
}

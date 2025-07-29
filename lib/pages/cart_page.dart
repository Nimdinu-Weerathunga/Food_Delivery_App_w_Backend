import 'package:flutter/material.dart';
import 'package:food_delivery_app_w_backend/components/my_button.dart';
import 'package:food_delivery_app_w_backend/components/my_cart_tile.dart';
import 'package:food_delivery_app_w_backend/models/restaurant.dart';
import 'package:food_delivery_app_w_backend/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        //scaffold UI
        return Scaffold(
          appBar: AppBar(
            title: const Text('Your Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text(
                        'Are you sure you want to clear your cart?',
                      ),
                      actions: [
                        //cancel button
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text('Cancel'),
                        ),

                        //confirm button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // clear the cart
                            restaurant.clearCart();
                          },
                          child: Text('yes'),
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          body: Column(
            children: [
              //list of cart items
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(child: Center(child: Text("Cart is empty")))
                        : Expanded(
                            //cart items list
                            child: ListView.builder(
                              itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];

                                //return cart item UI
                                return MyCartTile(cartItem: cartItem);
                              },
                            ),
                          ),
                  ],
                ),
              ),
              //button to pay
              MyButton(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PaymentPage()),
                ),
                text: "Go To Checkout",
              ),

              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}

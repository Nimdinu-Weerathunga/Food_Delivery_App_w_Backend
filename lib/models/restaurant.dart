import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app_w_backend/models/cart_item.dart';
import 'package:food_delivery_app_w_backend/models/food.dart';

class Restaurant extends ChangeNotifier {
  //List of food menu
  final List<Food> _menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheeder , letture, tomato, and a hint of onion and pickle",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 3.99),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "Smoky grilled beef patty topped with tangy BBQ sauce, crispy onion rings, cheddar cheese, and lettuce.",
      imagePath: "lib/images/burgers/bbq_burger.png",
      price: 1.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra BBQ sauce", price: 0.49),
        Addon(name: "Grilled Jalapeños", price: 0.99),
        Addon(name: "Double Patty", price: 2.49),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "A tropical twist with grilled pineapple, teriyaki-glazed beef patty, Swiss cheese, and lettuce.",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 1.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Pineapple", price: 0.75),
        Addon(name: "Teriyaki Drizzle", price: 0.50),
        Addon(name: "Fried Egg", price: 1.25),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "A bold burger with blue cheese crumbles, caramelized onions, arugula, and a touch of garlic aioli.",
      imagePath: "lib/images/burgers/bluemoon_burger.png",
      price: 2.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Blue Cheese", price: 1.25),
        Addon(name: "Mushrooms", price: 1.00),
        Addon(name: "Truffle Oil", price: 1.99),
      ],
    ),
    Food(
      name: "Cheese Burger",
      description:
          "A simple and satisfying cheeseburger with American cheese, ketchup, mustard, and pickles.",
      imagePath: "lib/images/burgers/cheese_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.75),
        Addon(name: "Lettuce & Tomato", price: 0.50),
        Addon(name: "Spicy Sauce", price: 0.60),
      ],
    ),

    //sides
    Food(
      name: "Garlic Bread",
      description:
          "Warm and crispy garlic bread topped with melted butter and herbs.",
      imagePath: "lib/images/sides/garlic_bread_side.png",
      price: 1.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Topping", price: 0.75),
        Addon(name: "Extra Garlic", price: 0.50),
      ],
    ),
    Food(
      name: "Loaded Fries",
      description:
          "Crispy fries smothered in cheese sauce, bacon bits, and scallions.",
      imagePath: "lib/images/sides/loadedfries_side.png",
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Jalapeños", price: 0.50),
        Addon(name: "Ranch Drizzle", price: 0.60),
        Addon(name: "Chili Beef", price: 1.25),
      ],
    ),
    Food(
      name: "Mac & Cheese",
      description: "Creamy and cheesy macaroni baked to perfection.",
      imagePath: "lib/images/sides/mac_side.png",
      price: 1.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Bacon Crumbles", price: 0.99),
        Addon(name: "Extra Cheese", price: 0.75),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Golden-fried onion rings with crispy batter and bold flavor.",
      imagePath: "lib/images/sides/onion_rings_side.png",
      price: 1.59,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Dip", price: 0.50),
        Addon(name: "Spicy Mayo", price: 0.50),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description: "Sweet and crispy fries made from fresh sweet potatoes.",
      imagePath: "lib/images/sides/sweet_potato_side.png",
      price: 1.79,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Marshmallow Dip", price: 0.60),
        Addon(name: "Cinnamon Sugar Dust", price: 0.40),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Lava Cake",
      description:
          "Warm, rich chocolate cake with a gooey molten center, served with a scoop of vanilla ice cream.",
      imagePath: "lib/images/desserts/chocolate_lava_cake_dessert.png",
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Ice Cream", price: 1.00),
        Addon(name: "Chocolate Drizzle", price: 0.50),
        Addon(name: "Crushed Nuts", price: 0.75),
      ],
    ),
    Food(
      name: "New York Cheesecake",
      description:
          "Classic creamy cheesecake with a buttery graham cracker crust, served plain or with fruit toppings.",
      imagePath: "lib/images/desserts/newyork_cheesecake_dessert.png",
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Sauce", price: 0.50),
        Addon(name: "Whipped Cream", price: 0.40),
        Addon(name: "Blueberry Topping", price: 0.60),
      ],
    ),
    Food(
      name: "Salted Caramel Brownie",
      description:
          "Fudgy chocolate brownie swirled with salted caramel and topped with dark chocolate chunks.",
      imagePath: "lib/images/desserts/salted_caramel_brownie_dessert.png",
      price: 2.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Vanilla Ice Cream", price: 1.00),
        Addon(name: "Caramel Sauce", price: 0.50),
        Addon(name: "Sea Salt Sprinkle", price: 0.30),
      ],
    ),
    Food(
      name: "Strawberry Shortcake",
      description:
          "Fluffy shortcake layered with whipped cream and fresh strawberries for a fruity delight.",
      imagePath: "lib/images/desserts/strawberry_shortcake_dessert.png",
      price: 3.25,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Strawberries", price: 0.75),
        Addon(name: "Whipped Cream", price: 0.50),
        Addon(name: "Vanilla Drizzle", price: 0.40),
      ],
    ),
    Food(
      name: "Tiramisu Cup",
      description:
          "Classic Italian dessert with espresso-soaked ladyfingers, creamy mascarpone, and cocoa dusting.",
      imagePath: "lib/images/desserts/tiramisu_cup_dessert.png",
      price: 3.75,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Mascarpone", price: 0.90),
        Addon(name: "Cocoa Dust", price: 0.25),
        Addon(name: "Chocolate Chips", price: 0.60),
      ],
    ),

    //drinks
    Food(
      name: "Blueberry Burst Juice",
      description:
          "A revitalizing mix of blueberries, apples, and a splash of mint for a refreshing burst of flavor.",
      imagePath: "lib/images/drinks/blueberry_burst_juice.drink.png",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chia Seeds", price: 0.50),
        Addon(name: "Extra Mint", price: 0.40),
        Addon(name: "Ice Cubes", price: 0.20),
      ],
    ),
    Food(
      name: "Cold Brew Coffee",
      description:
          "Smooth, slow-steeped cold brew coffee served over ice with bold and rich flavor.",
      imagePath: "lib/images/drinks/cold_brew_coffee_drink.png",
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Vanilla Syrup", price: 0.50),
        Addon(name: "Oat Milk", price: 0.60),
        Addon(name: "Ice Cream Scoop", price: 1.00),
      ],
    ),
    Food(
      name: "Iced Matcha Latte",
      description:
          "Earthy matcha green tea blended with your choice of milk and served cold over ice.",
      imagePath: "lib/images/drinks/iced_matcha_latte_drink.png",
      price: 3.29,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Honey", price: 0.40),
        Addon(name: "Almond Milk", price: 0.60),
        Addon(name: "Whipped Cream", price: 0.75),
      ],
    ),
    Food(
      name: "Mango Tango Smoothie",
      description:
          "A tropical smoothie blended with ripe mangoes, oranges, and pineapple for a citrusy kick.",
      imagePath: "lib/images/drinks/mango_tango_smoothie_drink.png",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Protein Powder", price: 1.00),
        Addon(name: "Coconut Flakes", price: 0.75),
        Addon(name: "Chia Seeds", price: 0.50),
      ],
    ),
    Food(
      name: "Strawberry Lemonade",
      description:
          "Cool and tangy lemonade blended with fresh strawberry purée and served over ice.",
      imagePath: "lib/images/drinks/strawberry_lemonade_drink.png",
      price: 2.75,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.30),
        Addon(name: "Lemon Slice", price: 0.25),
        Addon(name: "Sparkling Water", price: 0.60),
      ],
    ),

    //salads
    Food(
      name: "Asian Sesame Salad",
      description:
          "A refreshing mix of romaine, shredded carrots, edamame, and crispy wonton strips with a tangy sesame vinaigrette.",
      imagePath: "lib/images/salads/asiansesame_salad.png",
      price: 2.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.50),
        Addon(name: "Extra Sesame Dressing", price: 0.50),
        Addon(name: "Avocado", price: 1.25),
      ],
    ),
    Food(
      name: "Caesar Salad",
      description:
          "Classic Caesar salad with romaine lettuce, parmesan cheese, croutons, and creamy Caesar dressing.",
      imagePath: "lib/images/salads/caesar_salad.png",
      price: 2.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.50),
        Addon(name: "Boiled Egg", price: 0.99),
        Addon(name: "Extra Dressing", price: 0.50),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A Mediterranean blend of cucumbers, tomatoes, olives, red onions, and feta cheese with olive oil dressing.",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 2.79,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Halloumi", price: 1.75),
        Addon(name: "Extra Feta", price: 0.75),
        Addon(name: "Pita Chips", price: 0.99),
      ],
    ),
    Food(
      name: "Southwest Salad",
      description:
          "Zesty southwest flavors with black beans, corn, avocado, tortilla strips, and chipotle ranch.",
      imagePath: "lib/images/salads/southwest_salad.png",
      price: 3.25,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.50),
        Addon(name: "Chipotle Sauce", price: 0.50),
        Addon(name: "Shredded Cheese", price: 0.70),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A healthy blend of quinoa, cherry tomatoes, cucumbers, red onions, and fresh herbs tossed in a lemon vinaigrette.",
      imagePath: "lib/images/salads/quinoa_salad.png",
      price: 3.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Feta Cheese", price: 0.75),
        Addon(name: "Grilled Chicken", price: 1.50),
        Addon(name: "Avocado", price: 1.25),
      ],
    ),
  ];

  /*

 G E T T I N G
  
  */

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  /*
  
 O P E R A T I O N S

  */

  // user cart
  final List<CartItem> _cart = [];

  // add to cart
  void addToCart(Food food, List<Addon> selectedAddons, int quantity) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // Check if the food and selected addons match
      bool isSameFood = item.food == food;

      //ckeck if the selected addons match
      bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      // If the item already exists, increase the quantity
      cartItem.quantity += quantity;
    } else {
      // If the item does not exist, add a new CartItem
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }

    notifyListeners();
  }

  // remove to cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        // If quantity is more than 1, decrease the quantity
        _cart[cartIndex].quantity--;
      } else {
        // If quantity is 1, remove the item from the cart
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // get total price of cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // clar cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  /*

 H E L P E R S

  */
}

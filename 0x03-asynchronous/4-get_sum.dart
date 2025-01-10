import 'dart:convert';
import '4-util.dart'; // Import the utility file with the provided functions

Future<double> calculateTotal() async {
  try {
    // Step 1: Get the user's data (user ID)
    String userData = await fetchUserData();
    String userId = json.decode(userData)["id"];

    // Step 2: Get the user's orders (list of products)
    String ordersData = await fetchUserOrders(userId);
    List<String> products = List<String>.from(json.decode(ordersData));

    // Step 3: Get the price of each product
    double totalPrice = 0.0;
    for (String product in products) {
      String priceData = await fetchProductPrice(product);
      double price = json.decode(priceData);
      totalPrice += price;
    }

    // Step 4: Return the total price
    return totalPrice;
  } catch (e) {
    // In case of any error, return -1
    print('Error: $e');
    return -1;
  }
}

void main() async {
  // Example usage of calculateTotal()
  double total = await calculateTotal();
  print(total);
}

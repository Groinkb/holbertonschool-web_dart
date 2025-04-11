import '4-util.dart';
import 'dart:convert';

Future<dynamic> calculateTotal() async {
  try {
    // Get user data and extract ID
    final userData = await fetchUserData();
    final userMap = json.decode(userData);
    final userId = userMap['id'];

    // Get user orders
    final ordersJson = await fetchUserOrders(userId);
    final orders = json.decode(ordersJson) as List<dynamic>;

    // Calculate total price
    double total = 0.0;
    for (final product in orders) {
      final priceJson = await fetchProductPrice(product);
      final price = json.decode(priceJson);
      total += price;
    }

    return total;
  } catch (error) {
    return -1; // Return an integer, not a double, in case of error
  }
}

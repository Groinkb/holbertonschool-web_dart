import '4-util.dart';
import 'dart:convert';

Future<int> calculateTotal() async {
  try {
    // Get user data and extract ID
    final userData = await fetchUserData();
    final userMap = json.decode(userData);
    final userId = userMap['id'];

    // Get user orders
    final ordersJson = await fetchUserOrders(userId);
    final orders = json.decode(ordersJson) as List<dynamic>;

    // Calculate total price
    int total = 0;
    for (final product in orders) {
      final priceJson = await fetchProductPrice(product);
      final price = json.decode(priceJson);
      total += price.toInt();
    }

    return total;
  } catch (error) {
    return -1;
  }
}

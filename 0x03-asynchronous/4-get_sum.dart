import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // 1. Fetch user data
    final String userData = await fetchUserData();
    final Map<String, dynamic> userMap = jsonDecode(userData);
    final String userId = userMap['id'];

    // 2. Fetch orders using the user ID
    final String ordersJson = await fetchUserOrders(userId);
    final List<dynamic> orders = jsonDecode(ordersJson);

    double total = 0;

    // 3. For each product, get price and accumulate total
    for (var product in orders) {
      final String priceJson = await fetchProductPrice(product);
      final double price = jsonDecode(priceJson);
      total += price;
    }

    return total;
  } catch (e) {
    return -1;
  }
}

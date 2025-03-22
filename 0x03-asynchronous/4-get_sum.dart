import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Step 1: Get user data
    final String userData = await fetchUserData();
    final Map<String, dynamic> userMap = jsonDecode(userData);
    final String userId = userMap['id'];

    // Step 2: Get user orders
    final String ordersJson = await fetchUserOrders(userId);
    final List<dynamic> orders = jsonDecode(ordersJson);

    double total = 0.0;

    // Step 3: For each product, get the price and add to total
    for (final product in orders) {
      final String priceJson = await fetchProductPrice(product);
      final dynamic priceDecoded = jsonDecode(priceJson);
      total += (priceDecoded as num).toDouble(); // Safe conversion
    }

    return total;
  } catch (e) {
    return -1.0;
  }
}

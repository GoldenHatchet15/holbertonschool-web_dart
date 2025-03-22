import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    // Step 1: Fetch user data
    final String userData = await fetchUserData();
    final Map<String, dynamic> userMap = jsonDecode(userData);
    final String userId = userMap['id'];

    // Step 2: Fetch user orders
    final String ordersJson = await fetchUserOrders(userId);
    final dynamic decodedOrders = jsonDecode(ordersJson);

    // Defensive check: make sure it's a list
    if (decodedOrders is! List) {
      return -1;
    }

    List<dynamic> orders = decodedOrders;
    double total = 0;

    // Step 3: Loop through and get product prices
    for (final product in orders) {
      final String priceJson = await fetchProductPrice(product);
      final dynamic decodedPrice = jsonDecode(priceJson);

      // Defensive: price must be a num (int or double)
      if (decodedPrice is! num) {
        return -1;
      }

      total += decodedPrice.toDouble();
    }

    return total;
  } catch (e) {
    return -1;
  }
}

import "4-util.dart";
import "dart:convert";

Future<double> calculateTotal() async {
  try {
    // Étape 1 : Obtenez les données utilisateur et l'ID
    String userData = await fetchUserData();
    String userId = json.decode(userData)["id"];

    // Étape 2 : Obtenez les commandes de l'utilisateur
    String ordersData = await fetchUserOrders(userId);
    List<String> products = List<String>.from(json.decode(ordersData));

    // Étape 3 : Obtenez les prix des produits
    List<Future<double>> priceFutures = products.map((product) async {
      String priceData = await fetchProductPrice(product);
      return json.decode(priceData);
    }).toList();

    // Étape 4 : Attendez que tous les prix soient récupérés
    List<double> prices = await Future.wait(priceFutures);

    // Étape 5 : Calculez le total des prix
    double totalPrice = prices.fold(0.0, (sum, price) => sum + price);

    return totalPrice;
  } catch (e) {
    // Retournez -1 en cas d'erreur
    return -1;
  }
}

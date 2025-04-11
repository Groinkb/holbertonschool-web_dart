import '4-get_sum.dart';

main() async {
  var result = await calculateTotal();
  if (result == -1.0) {
    print(-1); // Force the error case to print as an integer
  } else {
    print(result); // Print normally for the success case
  }
}

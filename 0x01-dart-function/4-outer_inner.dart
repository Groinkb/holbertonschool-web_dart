void outer(String name, String id) {
  String firstName = name.split(" ")[0];
  String lastName = name.split(" ")[1];

  String inner() {
    return "Hello Agent ${lastName[0]}.$firstName your id is $id";
  }

  print(inner());
}

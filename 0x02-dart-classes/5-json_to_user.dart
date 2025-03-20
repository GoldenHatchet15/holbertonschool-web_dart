class User {
  // Properties
  int id;
  String name;
  int age;
  double height;

  // Constructor
  User({required this.id, required this.name, required this.age, required this.height});

  // Convert object to JSON (Map representation)
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "age": age,
      "height": height
    };
  }

  // Create User object from JSON (Map)
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height']
    );
  }

  // Override toString() for formatted output
  @override
  String toString() {
    return "User(id : $id ,name: $name,  age: $age, height: $height)";
  }
}

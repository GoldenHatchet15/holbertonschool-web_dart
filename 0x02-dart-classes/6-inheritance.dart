import '6-password.dart'; // Import Password class

class User extends Password {
  int id = 0;
  String name = "";
  int age;
  double height;
  String user_password = ""; // New property

  // Constructor
  User({required this.id, required this.name, required this.age, required this.height, required this.user_password})
      : super(password: user_password); // Call parent constructor

  // Convert object to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Create User object from JSON
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? "Unknown",
      age: userJson['age'] ?? 0,
      height: userJson['height'] ?? 0.0,
      user_password: userJson['user_password'] ?? "", // Null-safe default value
    );
  }

  // Override toString() to show password validation
  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}

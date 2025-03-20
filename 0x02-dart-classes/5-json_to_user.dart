class User {
  int id = 0;
  String name = "";
  int age;
  double height;

  // Constructor
  User({required this.id, required this.name, required this.age, required this.height});

  // Convert JSON (Map) to User object
  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
    );
  }

  // Convert User object to JSON (Map)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  // Override toString method
  @override
  String toString() {
    return 'User(id : $id ,name: $name, age: $age, height: $height)';
  }
}

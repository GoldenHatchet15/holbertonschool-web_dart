void outer(String name, String id) {
    String inner() {
        List<String> parts = name.split(" ");// split the name by space
        String firstName = parts[0];// get the first part
        String lastName = parts[1];// get the second part

        return "Hello Agent ${lastName[0]}.$firstName your id is $id";
    }

    print(inner()); 
}

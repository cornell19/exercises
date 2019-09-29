class Contact {
  final String firstName;
  final String lastName;
  Contact(this.firstName, this.lastName);

  String get fullName => '$firstName $lastName';

  factory Contact.fromMap(Map<String, dynamic> map) {
    return Contact(map['firstName'], map['lastName']);
  }
}

class Contact {
  final String firstName;
  final String lastName;
  Contact(this.firstName, this.lastName);

  String get fullName => '$firstName $lastName';
}

class Contact {
  final String url;
  final String firstName;
  final String lastName;
  Contact(this.url, this.firstName, this.lastName);

  String get fullName => '$firstName $lastName';
}

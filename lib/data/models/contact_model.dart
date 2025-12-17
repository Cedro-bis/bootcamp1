class ContactModel {
  final String name;
  final String surname;
  final String number;
  final String email;
  final String adress;
  final String company;
  final String birthday;
  bool isFavotite;

  ContactModel({
    required this.name,
    required this.surname,
    required this.number,
    required this.email,
    required this.adress,
    required this.company,
    required this.birthday,
    this.isFavotite = false,
  });
  String get completeName => '$name $surname';
  String get abreviationName => '${name[0]}${surname[0]}'.toUpperCase();
  void changeFavoriteIcone()=> isFavotite = !isFavotite;
}

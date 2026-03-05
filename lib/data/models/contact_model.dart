class ContactModel {
  final String name;
  final String surname;
  final String number;
  final String email;
  final String adress;
  final String company;
  final String birthday;
  bool isFavotite;
  final String id;

  ContactModel({
    required this.id,
    required this.name,
    required this.surname,
    required this.number,
    required this.email,
    required this.adress,
    required this.company,
    required this.birthday,
    this.isFavotite = false,
  });
  String get completeName => '$surname $name';
  String get abreviationName => '${surname[0]}${name[0]}'.toUpperCase();
  void changeFavoriteIcone() {
    isFavotite = !isFavotite;
  }

  Map<String, dynamic> toMap({bool includeId = true}) {
    final map = <String, dynamic>{
      'name': name,
      'surname': surname,
      'number': number,
      'email': email,
      'adress': adress,
      'company': company,
      'birthday': birthday,
      'isFavorite': isFavotite,
    };
    if (includeId) {
      final persed = int.tryParse(id);
      map['id'] = persed ?? id;
    }
    return map;
  }

  static ContactModel fromMap(Map<String, dynamic> map) {
    return ContactModel(
      id: map['id'].toString(),
      name: map['name'] ?? '',
      surname: map['surname'] ?? '',
      number: map['number'] ?? '',
      email: map['email'] ?? '',
      adress: map['adress'] ?? '',
      company: map['company'] ?? '',
      birthday: map['birthday'] ?? '',
      isFavotite: (map['isFavorite'] == 1) || (map['isFavorite'] == true),
    );
  }
}

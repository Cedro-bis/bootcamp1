import 'package:bootcamp1/data/data.dart';
import 'package:bootcamp1/pages/contact_page_advanced.dart';
import 'package:flutter/material.dart';

class UpdateContacts extends StatefulWidget {
  final ContactModel contactModel;
  const UpdateContacts({super.key, required this.contactModel});

  @override
  State<UpdateContacts> createState() => _UpdateContactsState();
}

class _UpdateContactsState extends State<UpdateContacts> {
  final _name = TextEditingController();
  final _surname = TextEditingController();
  final _number = TextEditingController();
  final _email = TextEditingController();
  final _adress = TextEditingController();
  final _company = TextEditingController();
  final _birthday = TextEditingController();
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _name.text = widget.contactModel.name;
    _surname.text = widget.contactModel.surname;
    _number.text = widget.contactModel.number;
    _email.text = widget.contactModel.email;
    _adress.text = widget.contactModel.adress;
    _company.text = widget.contactModel.company;
    _birthday.text = widget.contactModel.birthday;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Modifier'), elevation: 12),
      body: Container(
        margin: EdgeInsets.all(12),
        child: ListView(
          children: [
            TextField(
              controller: _surname,
              decoration: InputDecoration(labelText: 'Prénom'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _name,
              decoration: InputDecoration(labelText: 'Nom'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _number,
              decoration: InputDecoration(labelText: 'Numéro'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _email,
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _adress,
              decoration: InputDecoration(labelText: 'Adresse'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _company,
              decoration: InputDecoration(labelText: 'Entreprise'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: _birthday,
              decoration: InputDecoration(labelText: "Date d'anniversaire"),
            ),
            SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 8,
              children: [
                Checkbox(
                  value: isFavorite,
                  onChanged: (c) => setState(() {
                    isFavorite = c ?? true;
                  }),
                ),
                Text('Favoris ?'),
                SizedBox(height: 18),
                Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Annuler'),
                      ),
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () async {
                          await ContactsDatabase.instance.updateData(
                            ContactModel(
                              id: '0',
                              name: _name.text,
                              surname: _surname.text,
                              number: _number.text,
                              email: _email.text,
                              adress: _adress.text,
                              company: _company.text,
                              birthday: _birthday.text,
                            ),
                          );
                          Navigator.of(context).pushAndRemoveUntil(
                            MaterialPageRoute(
                              builder: (builder) => ContactPageAdvanced(),
                            ),
                            (predicate) => false,
                          );
                        },
                        child: Text('Modifier'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

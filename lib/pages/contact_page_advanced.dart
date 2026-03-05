import 'package:bootcamp1/data/data.dart';
import 'package:bootcamp1/pages/contacts_details.dart';
import 'package:bootcamp1/pages/update_contacts.dart';
import 'package:bootcamp1/services/contacts_services.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPageAdvanced extends StatefulWidget {
  const ContactPageAdvanced({super.key});

  @override
  State<ContactPageAdvanced> createState() => _ContactPageAdvancedState();
}

class _ContactPageAdvancedState extends State<ContactPageAdvanced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'), elevation: 12),
      body: FutureBuilder<List<ContactModel>>(
        future: ContactsDatabase.instance.readData(),
        builder: (ctx, snp) {
          if (!snp.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          if (snp.data!.isEmpty) {
            return Center(child: Text('Liste vide'));
          }
          return ListView.builder(
            itemCount: snp.data!.length,
            itemBuilder: (context, idx) {
              final liste = snp.data![idx];
              return GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text('Que voulez-vous faire?'),
                      content: Row(
                        children: [
                          Expanded(
                            child: IconButton(
                              icon: Icon(Icons.call),
                              onPressed: () =>
                                  ContactsServices.makeCall(liste.number),
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(Icons.mail_outline),
                              onPressed: () =>
                                  ContactsServices.makeSms(liste.number),
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.green,
                              ),
                              onPressed: () =>
                                  ContactsServices.openWhatsApp(liste.number),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: Card(
                  child: ListTile(
                    leading: InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text('Profil'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 70,
                                  child: Text(
                                    liste.abreviationName,
                                    style: TextStyle(
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(liste.completeName),
                                SizedBox(height: 5),
                                Text(liste.number),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Expanded(child: Icon(Icons.call_outlined)),
                                    Expanded(child: Icon(Icons.mail)),
                                    Expanded(
                                      child: Icon(Icons.video_call_outlined),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: CircleAvatar(child: Text(liste.abreviationName)),
                    ),
                    title: Text(liste.completeName),
                    subtitle: Text(liste.number),
                    trailing: PopupMenuButton(
                      icon: Icon(Icons.more_vert),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      onSelected: (c) {
                        print('Vous avez $c un contact');
                      },

                      itemBuilder: (ctx) => [
                        PopupMenuItem(
                          value: 'Détail',
                          child: ListTile(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => ContactsDetails(
                                    currenContact: snp.data![idx],
                                  ),
                                ),
                              );
                            },
                            leading: Icon(Icons.person),
                            title: Text('Détails'),
                          ),
                        ),
                        PopupMenuItem(
                          value: 'Modifié',
                          child: ListTile(
                            onTap: () async {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) =>
                                      UpdateContacts(contactModel: liste),
                                ),
                              );
                            },
                            leading: Icon(Icons.edit),
                            title: Text('Modifier'),
                          ),
                        ),
                        PopupMenuItem(
                          value: 'Supprimé',
                          child: GestureDetector(
                            onTap: () async {
                              await ContactsDatabase.instance.deleteData(
                                liste.id,
                              );
                              Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                  builder: (builder) => ContactPageAdvanced(),
                                ),
                                (predicate) => false,
                              );
                            },
                            child: ListTile(
                              leading: Icon(Icons.delete),
                              title: Text('Supprimer'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showForm();
        },
        child: Icon(Icons.dialpad),
      ),
    );
  }

  void _showForm() {
    TextEditingController name = TextEditingController();
    TextEditingController surname = TextEditingController();
    TextEditingController number = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController adress = TextEditingController();
    TextEditingController company = TextEditingController();
    TextEditingController birthday = TextEditingController();
    bool isFavorite = false;

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        scrollable: true,
        title: Text('Nouveau contact'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: surname,
              decoration: InputDecoration(labelText: 'Prénom'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: name,
              decoration: InputDecoration(labelText: 'Nom'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: number,
              decoration: InputDecoration(labelText: 'Numéro'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: email,
              decoration: InputDecoration(labelText: 'E-mail'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: adress,
              decoration: InputDecoration(labelText: 'Adresse'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: company,
              decoration: InputDecoration(labelText: 'Entreprise'),
            ),
            SizedBox(height: 4),
            TextField(
              controller: birthday,
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
              ],
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Annuler'),
          ),
          ElevatedButton(
            onPressed: () async {
              await ContactsDatabase.instance.createData(
                ContactModel(
                  id: "0",
                  name: name.text,
                  surname: surname.text,
                  number: number.text,
                  email: email.text,
                  adress: adress.text,
                  company: company.text,
                  birthday: birthday.text,
                ),
              );
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (ctx) => ContactPageAdvanced()),
                (predicate) => false,
              );
            },
            child: Text('Ajouter'),
          ),
        ],
      ),
    );
  }
}

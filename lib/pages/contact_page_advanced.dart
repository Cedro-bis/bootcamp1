import 'package:bootcamp1/pages/contacts_details.dart';
import 'package:flutter/material.dart';

import 'package:bootcamp1/data/data.dart';

class ContactPageAdvanced extends StatefulWidget {
  const ContactPageAdvanced({super.key});

  @override
  State<ContactPageAdvanced> createState() => _ContactPageAdvancedState();
}

class _ContactPageAdvancedState extends State<ContactPageAdvanced> {
  List<ContactModel> _filtered = localConctasData;
  @override
  void initState() {
    super.initState();
    _filtered = localConctasData;
  }

  void _updateQuery(String q) {
    final query = q.trim().toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filtered = localConctasData;
      } else {
        _filtered = localConctasData.where((c) {
          final full = c.completeName.toLowerCase();
          final phone = c.number.toLowerCase();
          final mail = c.email.toLowerCase();
          return full.contains(query) ||
              phone.contains(query) ||
              mail.contains(query);
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final favoriteContacts = _filtered
        .where((contact) => contact.isFavotite)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 80),
          child: Container(
            height: 75,
            color: Colors.white,
            padding: const EdgeInsets.all(16.0),
            child: SearchBar(
              onChanged: _updateQuery,
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 12),
              ),
              elevation: WidgetStatePropertyAll(0),
              leading: Icon(Icons.search_outlined, color: Colors.green),
              backgroundColor: WidgetStatePropertyAll(Colors.grey),
              hintText: "Search contacts",
              hintStyle: WidgetStatePropertyAll(
                TextStyle(color: Colors.grey.shade600),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 16.0,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 8,
                children: [
                  Icon(Icons.person_add_alt_1_outlined),
                  Text(
                    "Add New contact",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  if (favoriteContacts.isNotEmpty) ...[
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                          color: const Color.fromARGB(255, 255, 7, 7),
                        ),
                        SizedBox(width: 8),
                        Text('Favorite'),
                      ],
                    ),
                    SizedBox(height: 8),
                    Column(
                      children: List.generate(favoriteContacts.length, (index) {
                        final currentContact = favoriteContacts[index];

                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ContactsDetails(
                                  currenContact: favoriteContacts[index],
                                ),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey.shade200,
                                width: 0.5,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.grey.shade200,
                                      foregroundColor: Colors.black54,
                                      child: Text(
                                        currentContact.abreviationName,
                                      ),
                                    ),
                                    SizedBox(height: 12),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(currentContact.completeName),
                                        Text(
                                          currentContact.number,
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          currentContact.isFavotite
                                              ? currentContact.email
                                              : "",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone_outlined,
                                      color: Colors.green,
                                      size: 18,
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      Icons.phone_outlined,
                                      color: Colors.blue,
                                      size: 18,
                                    ),
                                    SizedBox(width: 8),
                                    Icon(
                                      currentContact.isFavotite
                                          ? Icons.star_rounded
                                          : Icons.star_outline,
                                      color: Colors.red,
                                      size: 18,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 12),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.people_alt_outlined),
                        SizedBox(width: 8),
                        Text('All contacts (${_filtered.length})'),
                      ],
                    ),
                    SizedBox(height: 12),
                    Column(
                      children: List.generate(_filtered.length, (index) {
                        final currentContact = _filtered[index];
                        return Container(
                          margin: const EdgeInsets.only(bottom: 8),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey.shade500,
                              width: 0.5,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    child: Text(currentContact.abreviationName),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        currentContact.completeName,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                      Text(
                                        currentContact.number,
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                      Text(
                                        currentContact.isFavotite
                                            ? currentContact.email
                                            : "",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey.shade600,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 12),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.phone_outlined,
                                        color: Colors.green,
                                      ),
                                      SizedBox(width: 8),
                                      Icon(
                                        Icons.mail_outline,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(width: 8),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          currentContact.isFavotite
                                              ? Icons.star_rounded
                                              : Icons.star_outline_outlined,
                                          color: Colors.red,
                                          size: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

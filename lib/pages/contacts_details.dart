import 'package:bootcamp1/extension.dart';
import 'package:flutter/material.dart';
import 'package:bootcamp1/data/data.dart';

const List<IconData> quichMenuIcons = [
  Icons.phone_outlined,
  Icons.messenger_outline_rounded,
  Icons.videocam_outlined,
  Icons.email_outlined,
];
const List<String> quichMenuTexts = [
  "Call",
  "Message",
  "Video call",
  "Message",
];
const List<String> infoTitles = [
  "Mobile",
  "Email",
  "Adress",
  "Company",
  "Birthday",
];
const List<IconData> infoIcons = [
  Icons.phone_outlined,
  Icons.email_outlined,
  Icons.location_city,
  Icons.work_outline,
  Icons.calendar_today_outlined,
];
const List<MaterialColor> infoColors = [
  Colors.green,
  Colors.blue,
  Colors.purple,
  Colors.orange,
  Colors.pink,
];
const List<String> infoRigthTexts = ["Call", "Send", "", "", ""];

class ContactsDetails extends StatelessWidget {
  final ContactModel currenContact;
  const ContactsDetails({super.key, required this.currenContact});

  @override
  Widget build(BuildContext context) {
    final List<String> infoUInfos = [
      currenContact.number,
      currenContact.email,
      currenContact.adress,
      currenContact.company,
      currenContact.birthday,
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Contact details")),
      body: ListView(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              spacing: 8,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 36,
                  child: Text(
                    currenContact.abreviationName,
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      currenContact.completeName,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    Text(
                      currenContact.number,
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ).bottomGap(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 16,
                  children: List.generate(4, (index) {
                    return Column(
                      spacing: 8,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            quichMenuIcons[index],
                            color: Colors.white,
                            size: 14,
                          ),
                        ),

                        Text(
                          quichMenuTexts[index],
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("contact Information"),
                    Row(
                      spacing: 8,
                      children: [
                        Icon(
                          currenContact.isFavotite
                              ? Icons.star_rounded
                              : Icons.star_outline,
                          color: Colors.red,
                          size: 14,
                        ),
                        Icon(Icons.edit_square, color: Colors.white),
                      ],
                    ),
                  ],
                ).bottomGap(),
                Column(
                  children: List.generate(infoUInfos.length, (index) {
                    return Column(
                      children: [
                        _informationContainer(
                          icon: infoIcons[index],
                          color: infoColors[index],
                          title: infoTitles[index],
                          info: infoUInfos[index],
                          rightText: infoRigthTexts[index],
                        ),
                        if (!(index == infoUInfos.length - 1))
                          Divider(color: Colors.grey.shade300, thickness: 0.5),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _informationContainer({
  required IconData icon,
  required String title,
  required String info,
  required MaterialColor color,
  String rightText = "",
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        spacing: 8,
        children: [
          customIconContainer(icon: icon, color: color),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.grey.shade500, fontSize: 12),
              ),
              Text(info),
            ],
          ),
        ],
      ),
      Text(rightText, style: TextStyle(fontSize: 12, color: color)),
    ],
  );
}

Widget customIconContainer({
  required IconData icon,
  required MaterialColor color,
}) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Icon(icon),
  );
}

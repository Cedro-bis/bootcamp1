import 'package:url_launcher/url_launcher.dart';

class ContactsServices {
  static String cleanNumber(String phoneNumber) {
    return phoneNumber.replaceAll(RegExp(r'[^\d]'), '');
  }
  // pour formaliser les urls.

  static Future<void> _mesUrls(String urls) async {
    final Uri uri = Uri.parse(urls);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        print("Impossible d'utiliser $uri pour cetteopération");
      }
    } catch (e) {
      print('Erreur lors du $e');
    }
  }

  // Pour les appels
  static Future<void> makeCall(String number) async {
    await _mesUrls('tel:${cleanNumber(number)}');
  }

  // Pour les sms
  static Future<void> makeSms(String number) async {
    await _mesUrls('sms:${cleanNumber(number)}');
  }

  static Future<void> openWhatsApp(String number) async {
    final cleanedNumber = cleanNumber(number);
    await _mesUrls('https://wa.me/$cleanedNumber');
  }
}

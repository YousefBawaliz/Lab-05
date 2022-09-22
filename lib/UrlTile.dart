import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_url = Uri.parse('https://www.facebook.com');
final Uri instagram_url = Uri.parse('https://www.instagram.com');

Future<void> Facebook_Function() async {
  if (!await launchUrl(Facebook_url)) {
    throw 'Could not launch $Facebook_url';
  }
}

Future<void> instagram_Function() async {
  if (!await launchUrl(instagram_url)) {
    throw 'Could not launch $instagram_url';
  }
}

class UrlClass extends StatelessWidget {
   UrlClass(
     {required this.myfunction,required this.platformIcon, required this.platformSubTitle, required this.platformTitle});
   


  String? platformTitle;
  String? platformSubTitle;

  IconData? platformIcon;
  Function()? myfunction ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: 
        myfunction
      ,
      child: ListTile(
        title: Text("$platformTitle"),
        subtitle: Text("$platformSubTitle"),
        leading: Icon(platformIcon),

      ),
    );
  }
}
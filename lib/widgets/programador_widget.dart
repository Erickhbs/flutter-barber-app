import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> abrirUrl (String link) async {
  String url = link;
  if(!await canLaunchUrl(Uri.parse(url))){
    await launchUrl(Uri.parse(url));
  } else {
    throw 'not found';
  }
}

class CardDev extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
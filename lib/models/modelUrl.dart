import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri Facebook_urlM = Uri.parse('https://www.facebook.com/marthastewart/');
final Uri instagram_urlM =
    Uri.parse('https://www.instagram.com/marthastewart/?hl=en');
final Uri Facebook_urlG = Uri.parse('https://www.facebook.com/gordonramsay/');
final Uri instagram_urlG =
    Uri.parse('https://www.instagram.com/gordongram/?hl=en');
final Uri Blog_urlM = Uri.parse('https://www.marthastewart.com/');
final Uri Blog_urlG = Uri.parse('https://www.gordonramsay.com/');

Future<void> Facebook_FunctionM() async {
  if (!await launchUrl(Facebook_urlM)) {
    throw 'Could not launch $Facebook_urlM';
  }
}

Future<void> instagram_functionM() async {
  if (!await launchUrl(instagram_urlM)) {
    throw 'Could not launch $instagram_urlM';
  }
}

Future<void> Facebook_FunctionG() async {
  if (!await launchUrl(Facebook_urlG)) {
    throw 'Could not launch $Facebook_urlG';
  }
}

Future<void> instagram_functionG() async {
  if (!await launchUrl(instagram_urlG)) {
    throw 'Could not launch $instagram_urlG';
  }
}

Future<void> Blog_FunctionG() async {
  if (!await launchUrl(Blog_urlG)) {
    throw 'Could not launch $Blog_urlG';
  }
}

Future<void> Blog_FunctionM() async {
  if (!await launchUrl(Blog_urlM)) {
    throw 'Could not launch $Blog_urlM';
  }
}

class URlClass extends StatelessWidget {
  URlClass(
      {required this.myfunction,
      required this.myplatformIcon,
      required this.myplatformSubTitle,
      required this.myplatformTitle});

  String? myplatformTitle;
  String? myplatformSubTitle;

  IconData? myplatformIcon;
  Function()? myfunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myfunction,
      child: ListTile(
        title: Text("$myplatformTitle",
            style: TextStyle(color: Colors.white, fontSize: 20)),
        subtitle: Text("$myplatformSubTitle",
            style: TextStyle(color: Colors.white, fontSize: 10)),
        leading: Icon(myplatformIcon, color: Color.fromARGB(255, 120, 75, 243)),
      ),
    );
  }
}

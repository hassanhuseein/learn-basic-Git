import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Example extends StatefulWidget {
  Example({Key? key}) : super(key: key);

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  Future<void>? _launched;
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.youtube.com/watch?v=XdBLe6IazYA';
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () => setState(() {
                _launched = _launchInBrowser(toLaunch);
              }),
              child: const Text('Launch in browser'),
            ),
            Container(
              height: 400,
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        var s = validateEmail(emailController.text);
                        print(s);
                      },
                      child: Text("validate email"))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  String? validateEmail(String email) {
    const String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    final RegExp regex = RegExp(pattern);
    if (email.isEmpty || !regex.hasMatch(email)) {
      return 'Invalid email';
    } else {
      return null;
    }
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }
}

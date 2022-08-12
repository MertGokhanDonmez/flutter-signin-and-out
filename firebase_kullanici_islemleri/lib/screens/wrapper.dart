import 'package:firebase_kullanici_islemleri/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';
import 'package:flutter/material.dart';
import 'package:firebase_kullanici_islemleri/models/user.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<Users?>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}

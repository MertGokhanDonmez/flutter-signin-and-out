import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_kullanici_islemleri/models/user.dart';
import 'package:firebase_kullanici_islemleri/screens/wrapper.dart';
import 'package:firebase_kullanici_islemleri/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<Users?>.value(
      initialData: Users(), // ?
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}

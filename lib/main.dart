import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mychat/Loading.dart';
import 'package:mychat/LoginActivity.dart';
import 'package:mychat/SomethingWentWrong.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  bool is_loading = false;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return LoginActivity();
        }

        return Loading();
      },
    );
  }
}
import 'package:flash_chat/constants.dart';
import 'package:flash_chat/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/round_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'register_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;
  bool _saving = false;

  void _submit() {
    setState(() {
      _saving = true;
    });

    new Future.delayed(new Duration(seconds: 4), () {
      setState(() {
        _saving = false;
      });
    });
  }

  Widget _buildWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Hero(
            tag: 'logo',
            child: Container(
              height: 200.0,
              child: Image.asset('images/logo.png'),
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) {
              email = value;
            },
            decoration: kTextDecoration.copyWith(hintText: 'Enter your email'),
          ),
          SizedBox(
            height: 8.0,
          ),
          TextField(
            textAlign: TextAlign.center,
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
            decoration:
                kTextDecoration.copyWith(hintText: 'Enter your password'),
          ),
          SizedBox(
            height: 24.0,
          ),
          RoundedButton(
            color: Colors.blueAccent,
            title: 'Register',
            press: () async {
              _submit();
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email, password: password);
                if (newUser != null) {
                  Navigator.pushNamed(context, ChatScreen.id);
                }
              } catch (e) {
                print(e);
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ModalProgressHUD(
          child: _buildWidget(),
          inAsyncCall: _saving,
        ));
  }
}

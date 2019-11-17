import 'package:flutter/material.dart';
import '../Styles/form_styles.dart';
import '../Mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginScreen> with ValidationMixin {
  final formkey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
          ),
          padding: EdgeInsets.all(50.0),
          child: _form(),
        ),
      ),
    );
  }

  Widget _form() {
    return Form(
      key: formkey,
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: SizedBox(height: 30.0),
          ),
          Flexible(
            flex: 4,
            child: _emailField(),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(height: 30.0),
          ),
          Flexible(
            flex: 4,
            child: _passwdField(),
          ),
          Flexible(
            flex: 1,
            child: SizedBox(height: 30.0),
          ),
          Flexible(
            flex: 2,
            child: _submitButton(),
          ),
        ],
      ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com',
        labelStyle: formTextStyle,
      ),
      validator: validateEmail,
      onSaved: (String value) => email = value,
    );
  }

  Widget _passwdField() {
    return TextFormField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        labelText: 'Password',
        labelStyle: formTextStyle,
      ),
      validator: validatePassword,
      onSaved: (String value) => password = value,
    );
  }

  Widget _submitButton() {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      splashColor: Theme.of(context).accentColor,
      child: Text("Log in"),
      onPressed: () {
        if (formkey.currentState.validate()) {
          formkey.currentState.save();
          formkey.currentState.reset();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:kuis/screens/books_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = "";
  String password = "";

  Widget _emailField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value) {
          email = value;
        },
        decoration: InputDecoration(
            hintText: 'email',
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ))),
        // validator: (String? value) => (value != null && value.contains('@'))
        //     ? 'Email tidak valid!'
        //     : null,
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        obscureText: true,
        enabled: true,
        onChanged: (value) {
          email = value;
        },
        decoration: InputDecoration(
            hintText: 'Password',
            contentPadding: EdgeInsets.all(8.0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ))),
        // validator: (String? value) => (value != null && value.length > 8)
        //     ? 'Password harus lebih dari 8 karakter!'
        //     : null,
      ),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return BooksPage();
            }));
            if (email == "putramukti26@gmail.com" && password == "123210041") {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BooksPage();
              }));
            } else {
              SnackBar snackBar =
                  SnackBar(content: Text("Email/password tidak sesuai"));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          child: const Text('Login')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _emailField(),
          _passwordField(),
          _loginButton(context),
        ],
      ),
    );
  }
}

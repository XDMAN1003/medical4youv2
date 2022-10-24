import 'package:flutter/material.dart';

import '../../../app/color.dart';
import '../../../models/user.dart';
import '../../../view.dart';
import '../LoginViewModel.dart';
import '../widget/FormTextField.dart';
import '../widget/TitleText.dart';

class Body extends StatelessWidget {
  //const LoginForm({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  void _onLogin(BuildContext context, LoginViewmodel viewmodel) async {
    final User? _user = await viewmodel.authenticate();
    if (_user != null) {
      Navigator.pop(context, _user);
    } else {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Login Failed'),
          content: const Text('Your email and/or password do not match.'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }
  }

  void _onFakeLogin(BuildContext context, LoginViewmodel viewmodel) async {
    //print("Fake Email: ${viewmodel.email}");
    //print("Fake Password: ${viewmodel.password}");
    final User? _user = await viewmodel.authenticate1();
    print(_user);
    if (_user != null) Navigator.pop(context, _user);
  }

  void _onCancel(BuildContext context, LoginViewmodel viewmodel) {
    viewmodel.showErrorMessage = false;
    Navigator.pop(context, null);
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    bool isEmail(val) {
      return RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(val);
    }

    return View(
      viewmodel: LoginViewmodel(),
      progressBuilder: (context, viewmodel) => Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(child: CircularProgressIndicator()),
      ),
      builder: (context, viewmodel, progressBuilder) => SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4 - 60,
              ),
              TitleText(
                title: "Welcome back!",
                size: 45.0,
              ),
              TitleText(
                title: "Sign in to Medical4You!",
                size: 20.0,
              ),
              SizedBox(
                height: 25.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    FormTextField(
                      label: "Email",
                      onChange: (val) => viewmodel.email = val,
                      validator: (val) => !(isEmail(val))
                          ? "\u26A0 Enter a valid an email address"
                          : null,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(),
                        suffixIcon: IconButton(
                          onPressed: () =>
                              viewmodel.showPassword = !viewmodel.showPassword,
                          icon: (viewmodel.showPassword)
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off_outlined),
                        ),
                      ),
                      obscureText: !viewmodel.showPassword,
                      onChanged: (value) => viewmodel.password = value,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    MaterialButton(
                      onPressed: () => {
                        if (_formKey.currentState!.validate())
                          {_onLogin(context, viewmodel)}
                      },
                      minWidth: double.infinity,
                      height: 60,
                      color: blue5,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: white,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Lobster"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                width: double.infinity,
                height: screenHeight * 1 / 3 - 45,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/medical-team1.png"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

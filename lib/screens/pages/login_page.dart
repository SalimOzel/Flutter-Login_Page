import 'package:flutter/material.dart';
import 'package:login_page/components/background.dart';
import 'package:login_page/languages/words.dart';
import 'package:login_page/main.dart';
import 'package:login_page/screens/pages/sing_up_page.dart';
import 'package:login_page/screens/pages/welcome_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    int _passwordLength = 20;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: _appBar(context),
        body: SingleChildScrollView(
          child: Column(children: [
            Background(height: height),
            Padding(
              padding: PaddingProperties().paddingHorizontal,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customSizedBox().height,
                  TextField(
                    autofocus: true,
                    keyboardType: TextInputType.name,
                    decoration: CustomInputDecoration(LanguageItems.username),
                  ),
                  customSizedBox().height,
                  TextField(
                    maxLength: _passwordLength,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: CustomInputDecoration(LanguageItems.password),
                  ),
                  Center(
                      child: Column(
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            LanguageItems.fotgotPassword,
                          )),
                      Padding(
                        padding: PaddingProperties().paddingtext,
                        child: ElevatedButton(onPressed: () {}, child: const Text(LanguageItems.loginButton)),
                      ),
                    ],
                  ))
                ],
              ),
            )
          ]),
        ));
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
        title: Text(LanguageItems.titleLoginPage, style: Theme.of(context).textTheme.headline5),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const WelcomePage();
                },
                fullscreenDialog: true,
              ));
            },
            icon: const Icon(Icons.chevron_left_outlined)));
  }
}

InputDecoration CustomInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
  );
}

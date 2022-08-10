import 'package:flutter/material.dart';
import 'package:login_page/components/background.dart';
import 'package:login_page/languages/words.dart';
import 'package:login_page/main.dart';
import 'package:login_page/screens/pages/login_page.dart';
import 'package:login_page/screens/pages/welcome_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    int _passwordLength = 20;
    return Scaffold(
      appBar: _signUpAppbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    decoration: CustomInputDecoration(LanguageItems.name),
                  ),
                  customSizedBox().height,
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: CustomInputDecoration(LanguageItems.surname),
                  ),
                  customSizedBox().height,
                  TextField(
                    keyboardType: TextInputType.name,
                    decoration: CustomInputDecoration(LanguageItems.username),
                  ),
                  customSizedBox().height,
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: CustomInputDecoration(LanguageItems.email),
                  ),
                  customSizedBox().height,
                  TextField(
                    maxLength: _passwordLength,
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: CustomInputDecoration(LanguageItems.password),
                  ),
                  customSizedBox().height,
                  Center(
                    child: Column(
                      children: [
                        _signUpButton(),
                        Padding(
                          padding: PaddingProperties().paddingtext,
                          child: const Text(LanguageItems.alreadyLogin),
                        ),
                        _textLoginButton(context)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar _signUpAppbar(BuildContext context) {
    return AppBar(
        title: Text(
          LanguageItems.titleSignUpPage,
          style: Theme.of(context).textTheme.headline5,
        ),
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

  TextButton _textLoginButton(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const LoginPage();
            },
            fullscreenDialog: true,
          ));
        },
        child: const Text(LanguageItems.loginButton));
  }

  ElevatedButton _signUpButton() => ElevatedButton(onPressed: () {}, child: const Text(LanguageItems.signUpButton));
}

InputDecoration CustomInputDecoration(String hintText) {
  return InputDecoration(
    hintText: hintText,
  );
}

class customSizedBox {
  final height = const SizedBox(height: 10);
}

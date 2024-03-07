import 'package:e_commerce/utils/app_string.dart';
import 'package:e_commerce/utils/enums.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final GlobalKey _keyForm = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  AuthEnumForm _enum = AuthEnumForm.login;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
          child: Form(
            key: _keyForm,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _enum == AuthEnumForm.login
                      ? AppString.login
                      : AppString.register,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 32,
                ),
                TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your Email' : null,
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: AppString.email,
                    hintText: AppString.enterEmail,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  validator: (value) =>
                      value!.isEmpty ? 'Please enter your password' : null,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: AppString.password,
                    hintText: AppString.enterPassword,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                if (_enum == AuthEnumForm.login)
                  InkWell(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'forget Your Password?',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor:  Theme.of(context).primaryColor),
                    onPressed: () {},
                    child: Text(
                      _enum == AuthEnumForm.login
                          ? AppString.login
                          : AppString.register,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        if (_enum == AuthEnumForm.login) {
                          _enum = AuthEnumForm.register;
                        } else {
                          _enum = AuthEnumForm.login;
                        }
                      });
                    },
                    child: Text(
                      _enum == AuthEnumForm.login
                          ? 'Don\'t have an account? Register'
                          : 'Have an account? Login',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Or Login With social account',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

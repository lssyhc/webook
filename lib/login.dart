import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class LoginPage extends StatefulWidget {
  static const routeName = "/LoginPage";

  const LoginPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

final navigatorKey = GlobalKey<NavigatorState>();

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future signIn(BuildContext context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
              child: CircularProgressIndicator(),
            ));

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: '${emailController.text.trim()}@student.smktelkom-pwt.sch.id',
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);
    }

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 375,
          height: 812,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 120, left: 24, right: 24),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 200),
                      Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                                  FloatingLabelBehavior.never,
                              fillColor: const Color(0xffF1F0F5),
                              filled: true,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide:
                                    const BorderSide(color: Colors.white),
                              ),
                              labelText: 'Masukan NIS Kamu',
                              labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 168, 162, 162)),
                            ),
                          ),
                          const SizedBox(height: 60),
                          TextFormField(
                            controller: passwordController,
                            obscureText: _isObscure,
                            decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    }),
                                fillColor: const Color(0xffF1F0F5),
                                filled: true,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                ),
                                labelText: 'Masukan Password Kamu',
                                labelStyle: const TextStyle(
                                    color: Color.fromARGB(255, 168, 162, 162))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Container(
                  width: 375,
                  height: 236,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(20, 28, 46, 1),
                  ),
                ),
              ),
              Positioned(
                top: 152,
                left: 24,
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100),
                      topRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100),
                      bottomRight: Radius.circular(100),
                    ),
                    color: Color.fromRGBO(67, 73, 88, 1),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                                color: Color.fromRGBO(245, 157, 48, 1),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 61, vertical: 14),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Text(
                                    'User',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        letterSpacing: -0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1.25),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 1),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  topRight: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                  bottomRight: Radius.circular(100),
                                ),
                                color: Color.fromRGBO(217, 217, 217, 1),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 55, vertical: 14),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Text(
                                    'Admin',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromRGBO(255, 255, 255, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 16,
                                        letterSpacing: -0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1.25),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 285,
                left: 30,
                child: Column(
                  children: const <Widget>[
                    Text(
                      'NIS',
                      style: TextStyle(
                          color: Color.fromRGBO(109, 109, 109, 1),
                          fontFamily: 'Inter',
                          fontSize: 14,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.normal,
                          height: 1.4285714285714286),
                    ),
                    SizedBox(height: 6),
                  ],
                ),
              ),
              Positioned(
                  top: 400,
                  left: 30,
                  child: Column(
                    children: const <Widget>[
                      Text(
                        'Password',
                        style: TextStyle(
                            color: Color.fromRGBO(109, 109, 109, 1),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.normal,
                            height: 1.4285714285714286),
                      ),
                      SizedBox(height: 6),
                    ],
                  )),
              Positioned(
                top: 500,
                left: 220,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    TextButton(
                      child: const Text(
                        'Lupa Password?',
                        style: TextStyle(
                            color: Color.fromRGBO(245, 157, 48, 1),
                            fontFamily: 'Inter',
                            fontSize: 14,
                            letterSpacing: 0,
                            fontWeight: FontWeight.normal,
                            height: 1.4285714285714286),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, HomePage.routeName);
                      },
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 530,
                left: 24,
                child: Column(
                  children: <Widget>[
                    // Button Loggin //
                    const SizedBox(height: 40),
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Color.fromRGBO(20, 28, 46, 1),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 139, vertical: 16),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TextButton(
                              onPressed: () {
                                signIn(context);
                              },
                              child: const Text(
                                'Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.25),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 71,
                left: 30,
                child: Column(
                  children: const <Widget>[
                    Text(
                      'Login',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Inter',
                          fontSize: 24,
                          letterSpacing: 0,
                          fontWeight: FontWeight.normal,
                          height: 1.4285714285714286),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              const Positioned(
                top: 110,
                left: 30,
                child: Text(
                  'Login untuk melanjutkan aplikasi',
                  style: TextStyle(
                      color: Color.fromRGBO(137, 137, 137, 1),
                      fontFamily: 'Inter',
                      fontSize: 14,
                      letterSpacing: 0,
                      fontWeight: FontWeight.normal,
                      height: 1.4285714285714286),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

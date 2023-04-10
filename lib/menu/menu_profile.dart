import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MenuProfile extends StatelessWidget {
  static const routeName = "/MenuProfile";

  const MenuProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 375,
              height: 332,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(20, 28, 46, 1),
              ),
            ),
          ),
          const Positioned(
            top: 75,
            left: 157,
            child: Text(
              'Profile',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 20,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          const Positioned(
            top: 248,
            left: 145,
            child: Text(
              'Faiz paiz',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Inter',
                  fontSize: 20,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 1),
            ),
          ),
          Positioned(
            top: 132,
            left: 136,
            child: Container(
              width: 104,
              height: 104,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/profile.png"),
                    fit: BoxFit.fitWidth),
                borderRadius: BorderRadius.all(Radius.elliptical(104, 104)),
              ),
            ),
          ),
          Positioned(
            top: 351,
            left: 24,
            child: SizedBox(
              width: 327,
              height: 52,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 327,
                      height: 52,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Color.fromRGBO(242, 242, 242, 1),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 15,
                      left: 20,
                      child: Container(
                        decoration: const BoxDecoration(),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            SizedBox(width: 20),
                            Text(
                              'Ganti Password',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(40, 40, 40, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            top: 421,
            left: 24,
            child: SizedBox(
              width: 327,
              height: 52,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 327,
                      height: 52,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Color.fromRGBO(242, 242, 242, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    left: 20,
                    child: Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          SizedBox(width: 20),
                          Text(
                            'History',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(40, 40, 40, 1),
                                fontFamily: 'Inter',
                                fontSize: 14,
                                letterSpacing: 0,
                                fontWeight: FontWeight.normal,
                                height: 1.4285714285714286),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 491,
            left: 24,
            child: SizedBox(
              width: 327,
              height: 52,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      width: 327,
                      height: 52,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                        color: Color.fromRGBO(242, 242, 242, 1),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    child: Container(
                      decoration: const BoxDecoration(),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const SizedBox(width: 20),
                          TextButton(
                            child: const Text(
                              'Log Out',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(246, 0, 0, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 14,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1.4285714285714286),
                            ),
                            onPressed: () {
                              FirebaseAuth.instance.signOut();
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

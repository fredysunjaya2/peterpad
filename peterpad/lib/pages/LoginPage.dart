import 'package:flutter/material.dart';
import 'package:peterpad/pages/HomePage.dart';
import 'package:peterpad/pages/IndexPage.dart';
import 'package:peterpad/pages/RegisterPage.dart';
import 'package:peterpad/constants.dart';
import 'package:responsive_framework/responsive_framework.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          height: screenHeight,
          child: ResponsiveRowColumn(
            columnPadding: EdgeInsets.fromLTRB(25, 50, 25, 0),
            columnCrossAxisAlignment: CrossAxisAlignment.start,
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              const ResponsiveRowColumnItem(
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  columnCrossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Text(
                        'Hello!!!',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 42,
                          fontFamily: 'outfit-semibold',
                          color: red,
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                      child: Text(
                        'Sign in to continue',
                        style: TextStyle(
                          fontSize: 32,
                          fontFamily: 'outfit-medium',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                child: Form(
                  key: _formKey,
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    columnPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    columnSpacing: 40,
                    children: [
                      ResponsiveRowColumnItem(
                        child: ResponsiveRowColumn(
                          columnSpacing: 20,
                          layout: ResponsiveRowColumnType.COLUMN,
                          children: [
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnCrossAxisAlignment: CrossAxisAlignment.start,
                                columnSpacing: 5,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      'Email',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'outfit-regular',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'outfit-regular',
                                        fontSize: 18,
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: red,
                                            width: 2,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: red,
                                            width: 2,
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        constraints: const BoxConstraints(
                                          maxHeight: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.COLUMN,
                                columnCrossAxisAlignment: CrossAxisAlignment.start,
                                columnSpacing: 5,
                                children: [
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      'Passsword',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'outfit-regular',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  ResponsiveRowColumnItem(
                                    child: TextFormField(
                                      cursorColor: Colors.black,
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'outfit-regular',
                                        fontSize: 20,
                                      ),
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: red,
                                            width: 2,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: const BorderSide(
                                            color: red,
                                            width: 2,
                                          ),
                                        ),
                                        contentPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                        constraints: const BoxConstraints(
                                          maxHeight: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) => const IndexPage(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(45, 13, 45, 13),
                            child: Text(
                              'Sign In',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'outfit-regular',
                                fontSize: 20,
                              ),
                            ),
                          ),
                          style: TextButton.styleFrom(
                            minimumSize: Size.zero,
                            padding: EdgeInsets.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            backgroundColor: red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  columnPadding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  columnSpacing: 20,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Image.asset('assets/RegisterPage/OR.png'),
                    ),
                    ResponsiveRowColumnItem(
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.ROW,
                        rowMainAxisAlignment: MainAxisAlignment.center,
                        rowCrossAxisAlignment: CrossAxisAlignment.center,
                        rowSpacing: 50,
                        children: [
                          ResponsiveRowColumnItem(
                            child: Image.asset(
                              'assets/RegisterPage/facebook.png',
                              width: 40,
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Image.asset(
                              'assets/RegisterPage/apple.png',
                              width: 35,
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Image.asset(
                              'assets/RegisterPage/google.png',
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveRowColumnItem(
                columnFit: FlexFit.tight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (BuildContext context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.ROW,
                    rowMainAxisAlignment: MainAxisAlignment.center,
                    rowCrossAxisAlignment: CrossAxisAlignment.end,
                    rowSpacing: 5,
                    rowPadding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    children: [
                      ResponsiveRowColumnItem(
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(
                            fontFamily: 'outfit-light',
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontFamily: 'outfit-light',
                            fontSize: 14,
                            color: red,
                          ),
                        ),
                      ),
                    ],
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

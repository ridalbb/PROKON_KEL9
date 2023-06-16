import 'package:flutter/material.dart';
import 'package:aplikasi_reservasi_travel_bus/loginpage/loginpage.dart';
import 'package:flutter/gestures.dart';

class signuppage extends StatefulWidget {
  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _reenterPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _reenterPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 134, 68),
              Color.fromARGB(255, 245, 93, 11),
            ],
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(
                  "images/ptpos3.png",
                  width: size.width * 0.4,
                  height: size.height * 0.1 + 10,
                  alignment: Alignment.center,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: size.width * 0.8,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(70),
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25,
                        fontFamily: "Montserrat",
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextFormField(
                          controller: _usernameController,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Silakan masukan username Anda';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 249, 247, 247),
                            contentPadding: const EdgeInsets.all(15),
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Color(int.parse('0xffBDBDBD')),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Color.fromARGB(255, 179, 178, 178),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextFormField(
                          controller: _emailController,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Silakan masukan email Anda';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 249, 247, 247),
                            contentPadding: const EdgeInsets.all(15),
                            labelText: 'Email',
                            labelStyle: TextStyle(
                              color: Color(int.parse('0xffBDBDBD')),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            suffixIcon: Icon(
                              Icons.email,
                              color: Color.fromARGB(255, 179, 178, 178),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Silakan masukan kata sandi Anda';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 249, 247, 247),
                            contentPadding: const EdgeInsets.all(15),
                            labelText: 'Password',
                            labelStyle: TextStyle(
                              color: Color(int.parse('0xffBDBDBD')),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 179, 178, 178),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: TextFormField(
                          controller: _reenterPasswordController,
                          validator: (value) {
                            if (value?.isEmpty ?? true) {
                              return 'Silakan masukan ulang kata sandi Anda';
                            } else if (value != _passwordController.text) {
                              return 'Kata sandi tidak cocok';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(255, 249, 247, 247),
                            contentPadding: const EdgeInsets.all(15),
                            labelText: 'Re-enter Password',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(255, 175, 175, 175),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 249, 247, 247),
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 179, 178, 178),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState?.validate() ?? false) {
                          // Form is valid, perform signup
                          // Add your signup logic here

                          // Navigate to the login page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => loginpage()),
                          );
                        }
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(size.width * 0.7, 50),
                        primary: Color.fromARGB(255, 255, 134, 68),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    RichText(
                      text: TextSpan(
                        text: "Sudah punya akun? ",
                        style: TextStyle(
                          color: Color.fromARGB(255, 102, 102, 102),
                          fontSize: 12,
                        ),
                        children: [
                          TextSpan(
                            text: 'Login di sini',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 134, 68),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => loginpage(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
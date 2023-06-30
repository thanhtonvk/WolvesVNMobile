import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wolvesvn/generated/assets.dart';
import 'package:wolvesvn/generated/common.dart';

void main() {
  runApp(Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  TextEditingController edtEmail = TextEditingController();
  TextEditingController edtPassword = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Common.backgroundColor,
      appBar: AppBar(
        backgroundColor: Common.backgroundColor,
        title: null,
      ),
      body: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.contain,
                    scale: 0.1,
                  ),
                  const Text(
                    "Bạn tốt - Tôi tốt - Chúng ta cùng tốt",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.orange),
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        children: [
                          const Text(
                            "Đăng nhập",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: edtEmail,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: 'Email',
                                hintStyle: const TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextField(
                            obscureText: true,
                            controller: edtPassword,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Mật khẩu",
                                hintStyle: const TextStyle(fontSize: 18),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange),
                                child: const Text(
                                  'Đăng nhập',
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                )),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Quên mật khẩu',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: const BorderSide(color: Colors.orange)),
                              onPressed: () {},
                              child: const Text(
                                "Đăng ký tài khoản",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

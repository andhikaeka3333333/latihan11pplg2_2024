import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihan11pplg2_2024/widgets/my_button.dart';
import 'package:latihan11pplg2_2024/widgets/my_colors.dart';
import 'package:latihan11pplg2_2024/widgets/my_text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String status = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login Page",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            MyTextField(
                controller: usernameController,
                hintText: "username",
                textStyle: TextStyle(color: textColor),
                isObsecure: false),
            MyTextField(
                controller: passwordController,
                hintText: "password",
                textStyle: TextStyle(color: textColor),
                isObsecure: true),

            SizedBox(
              height: 20,
            ),
            MyButton(
              icon: Icon(Icons.ac_unit_rounded),
              textButton: "login",
              backgroundColor: primaryColor,
              textColor: textColorWhite,
              radius: 5,
              elevation: 5,
              onPressed: () {
                setState(() {
                  String username = usernameController.text;
                  String password = passwordController.text;

                  if (username == 'admin' && password == 'admin') {
                    status = "Login sukses";
                  } else {
                    status = "Login gagal";
                  }
                });
              },
            ),

            Text("Status: " + status),

            // Expanded(child: Container(),),
            Spacer(),

            TextButton(
                onPressed: () {}, child: Text("Belum punya akun, Register"))
          ],
        ),
      ),
    );
  }
}

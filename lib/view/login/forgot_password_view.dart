import 'package:bookshop/constant/colors.dart';
import 'package:bookshop/pages/round_button.dart';
import 'package:bookshop/pages/round_textfield.dart';
import 'package:bookshop/view/main_tab/main_tab_view.dart';
import 'package:flutter/material.dart';


class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {

  TextEditingController txtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: TColor.primary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: TColor.text,
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 15,
              ),
           
              RoundTextField(
                controller: txtEmail,
                hintText: "Email Address",
              ),
              
              const SizedBox(
                height: 25,
              ),
              
              RoundLineButton(
                title: "Submit",
                onPressed: () {

               
                        Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MainTabView()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

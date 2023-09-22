import 'package:flutter/material.dart';
import 'package:flutter_project/component/myiconbutton.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_project/component/mytextbutton.dart';
import 'package:flutter_project/component/mytextfiled.dart';
import 'package:flutter_project/component/mybutton.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});
  final fullnamelController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final comfirmpasswordController = TextEditingController();

  void SignUpUser() async {
    if (emailController.text != "" && passwordController.text != "") {
      print('it s ok');
    }else{
      print('Please input your email ad password');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 216, 247, 235),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
          child: Column(
            children: [
              const Spacer(),
              Text(
                "Let start!!!\nPlease putting your name, email, password",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              

              const SizedBox(height: 20),
              mytextfiled(
                controller: fullnamelController,
                hintText: 'Enter your name', 
                labelText: 'Fullname', 
                obcureText: false),

              const SizedBox(height: 20),
              mytextfiled(
                controller: emailController,
                hintText: 'Enter your email', 
                labelText: 'Email', 
                obcureText: false),

              const SizedBox(height: 20),
              mytextfiled(
                controller: passwordController,
                hintText: 'Enter your password', 
                labelText: 'Password', 
                obcureText: false), 

              const SizedBox(height: 20),
              mytextfiled(
                controller: comfirmpasswordController,
                hintText: 'Confirm your password', 
                labelText: 'Confirm Password', 
                obcureText: true),


                const SizedBox(height: 20,),
                const SizedBox(height: 25,),
                MyButton(onTap: SignUpUser, hinText: 'sign up'),
                const SizedBox(height: 25,),
                
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                        Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ),
                       Expanded(child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyIconButton(imagePath: "lib/assets/image/A.icon.png"),
                    SizedBox(width: 20,),
                    MyIconButton(imagePath: "lib/assets/image/F.icon.png"),

                  ],
                ),

                const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Already a member?', style: GoogleFonts.lato(
                      textStyle: Theme.of(context).textTheme.displaySmall,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),),
                    const MyTextButton(lableText: 'Login now!', pageRoute: 'login',),
                  ],
                ),
              ),
              const Spacer(),

                
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:cakeshop_fe/CustomIcons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../widgets/pink_form.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'intro.dart';
import '../providers/authprovider.dart';
import 'package:provider/provider.dart';
import 'bakeries_screen.dart';



class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}


class _SignInState extends State<SignIn>{
  // SignUp({super.key});
  String errorMessage = ''; 
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _controllerMail = TextEditingController();
  final TextEditingController _controllerPw = TextEditingController();


  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Please, enter email.";
    } 
    return null;
  }

  String? _passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "Please, enter your password.";
  } 
  return null;
}

   Future<void> _submitForm(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
        try {
          print(_controllerMail.text);
          print(_controllerPw.text);
            UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
              email: _controllerMail.text,
              password: _controllerPw.text,
            );
            context.read<ApplicationState>().listenAuthChanges();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Bakeries()), // Replace with your main screen widget
              );
              setState(() {
                errorMessage = '';});
          } on FirebaseAuthException catch (e) {
            if (e.code == 'user-not-found') {
              print('No user found for that email.');
              setState(() {
                errorMessage = 'No user found for that email..';});
            } else if (e.code == 'wrong-password') {
              print('Wrong password provided for that user.');
              setState(() {
                errorMessage = 'Wrong password provided for that user.';});
            } else {
              print('Error: ${e.message}');
              setState(() {
                errorMessage = 'Error: ${e.message}';});
              
            }
          }
        
      } 
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text("Sign in!",
          textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 189, 110, 174),
              fontFamily: 'Lucy',
              fontSize: 58.0)),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
            padding: const EdgeInsets.all(10.0),
              
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 240, 193, 242),
                borderRadius: BorderRadius.circular(10),
              ),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        
                        Padding(padding: EdgeInsets.all(20.0)),
                        PinkForm(controller: _controllerMail, hintText: "Email", validator: _emailValidator,),
                        Padding(padding: EdgeInsets.all(20.0)),
                        PinkForm(controller: _controllerPw, hintText: "Password", validator: _passwordValidator,),
                        Padding(padding: EdgeInsets.all(20.0)),
                        errorMessage.isNotEmpty
                        ? Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              errorMessage,
                              style: const TextStyle(color: Colors.red, fontSize: 16),
                            ),
                          )
                        : Container(),
            // Display error message if any
       
                        ElevatedButton(
                      onPressed: () => _submitForm(context), // Triggers validation
                      child: Text("Submit"),
                    ),
                                    ],),
                  )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(CustomIcons.kakaotalk, color: const Color.fromARGB(255, 220, 132, 222), size: 50.0),
            Padding(padding: EdgeInsets.all(20.0)),
            Icon(CustomIcons.gmail, color: Color.fromARGB(255, 220, 132, 222), size: 40.0)
          ],)
        ],)
      )
    );
  }
  

  
}
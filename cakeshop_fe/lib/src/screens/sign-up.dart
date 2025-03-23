import 'package:cakeshop_fe/CustomIcons.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../widgets/pink_form.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'intro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}


class _SignUpState extends State<SignUp>{
  // SignUp({super.key});
  String errorMessage = ''; 
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controllerUn = TextEditingController();
  final TextEditingController _controllerMail = TextEditingController();
  final TextEditingController _controllerPw = TextEditingController();

  String? _nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Name cannot be empty";
    }
    return null;
  }

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return "Email cannot be empty";
    } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
      return "Enter a valid email";
    }
    return null;
  }

  String? _passwordValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "Password cannot be empty";
  } else if (value.length < 7) {
    return "Password must be at least 7 characters long";
  } else if (!RegExp(r'^(?=.*[A-Za-z])(?=.*\d).+$').hasMatch(value)) {
    return "Password must contain both letters and numbers";
  }
  return null;
}

Future<void> _submitForm(BuildContext context) async {
  if (_formKey.currentState!.validate()) {
    print("Form is valid!");
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _controllerMail.text,
        password: _controllerPw.text,
      );
      
      User? user = credential.user;
      if (user != null) {
        if (!user.emailVerified) {
          await user.sendEmailVerification(); // This should work
          print("Verification email sent to ${user.email}");
        }
        FirebaseFirestore.instance.collection('users').doc(user.uid).set({
          'username': _controllerUn.text,
          'email': user.email,
        }).then((_) {
          print("User data saved to Firestore");
        }).catchError((error) {
          print("Error saving user data to Firestore: $error");
        });
      }

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Intro()), // Proceed to the next screen
      );
      
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        setState(() {
          errorMessage = 'The password provided is too weak.';
        });
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        setState(() {
          errorMessage = 'The account already exists for that email.';
        });
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
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
          Text("Sign up!",
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
                        PinkForm(controller: _controllerUn, hintText: "User name", validator: _nameValidator,),
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



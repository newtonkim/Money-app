import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:venom_app/login.dart';

class SignUpPage extends StatelessWidget {
 
  @override

   Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios,
          size: 20,
          color: Colors.black,),


        ), 
      ),

      body: SingleChildScrollView(
        child: Container(
          padding:const EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height -50,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  const Text("Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                  SizedBox(
                    height: 20,
                    child: Text(
                      "Create an account, it is free",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700]
                      ),
                    ),
                  )
                ],
              ),

              Column(
                children: <Widget>[
                   inputFile(label: "Username"),
                   inputFile(label: "Email"), 
                   inputFile(label: "Password", obscureText: true) ,
                   inputFile(label: "Confirm Password", obscureText: true) 
                ],
              )
            ]
          )
        )
      
      ,)
    );
   }
}

// we will be creating a widget for text field
Widget inputFile({label, obscureText = false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          color:Colors.black87
        ),

      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0,
          horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color.fromARGB(255, 189, 189, 189)
            ),

          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 189, 189, 189))
          )
        ),
      ),
      const SizedBox(height: 10,)
    ],
  );
}
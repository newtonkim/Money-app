import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          // even space distribution
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Column (
              children: <Widget>[
                Text (
                  'Venom App',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text('We provide the best Accounting solution for your business, the future is here',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 106, 104, 104),
                  fontSize: 15,
                  
                ),)
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/welcome.png")
                )
              ),
            ),

            Column(
              children: <Widget>[
                // the login button
                MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginPage()));
                  },

                  // define the shape
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),
                  ),
                ),
                // create the signup button
              const SizedBox(height:20),
              MaterialButton(
                minWidth: double.infinity,
                height: 60,
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPage()));

                },
                color: const Color(0xff0095FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                    color:Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  )
                )
              )
                

              ],
            )
          ],
        ),
      )
      ),
    );
  }
}





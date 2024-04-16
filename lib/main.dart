import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}


class HomePage extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
        child: Column(
          // even space distribution
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column (
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
              decoration: BoxDecoration(
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },

                  // define the shape
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18
                    ),
                  ),
                )
                // create the signup button

                

              ],
            )
          ],
        ),
      )
      ),
    );
  }
}





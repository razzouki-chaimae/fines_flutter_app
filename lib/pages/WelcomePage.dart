import 'package:flutter/material.dart';
import 'package:my_fines/pages/RegistrationPage.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFBAE8E8), Color(0xFFF3FBFB)])),
        child: Scaffold(
            // By defaut, Scaffold background is white
            // Set its value to transparent
            backgroundColor: Colors.transparent,
            // Make the screen scrollable
            resizeToAvoidBottomInset: false,
            body: Center(
                child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 28, bottom: 20),
                  child: Image(
                    image: AssetImage('assets/images/welcome_vehicules.png'),
                    width: screenWidth * 0.75,
                    height: screenWidth * 0.75,
                  ),
                ),
                Container(
                  width: screenWidth * 0.75,
                  margin: EdgeInsets.only(bottom: 20),
                  child: Text(
                      "All About Your Fines",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF272343),
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                      )
                  ),
                ),
                Container(
                  width: screenWidth * 0.7,
                  margin: EdgeInsets.only(bottom: 24),
                  child: Text(
                      "check easily your vehicule's traffic fines and pay it with one click",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0x66272343),
                          fontSize: 22
                      )
                  ),
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.symmetric(vertical: 16, horizontal: 28)),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFD803)),
                      ),
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            color: Color(0xFF272343),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ),
                /*Container(
                  child: SizedBox(
                    width: screenWidth * 0.55,
                    child: TextButton(
                      child: Center(
                        child: Text(
                            "Get Started",
                          style: TextStyle(
                            color: Color(0xFF272343),
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.only(top: 16, right: 32, bottom: 16, left: 32)),
                        backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFD803)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                        )),
                        shadowColor: MaterialStateProperty.all<Color>(Color(0x33FFD803)),
                      ),
                    ),
                  )
                )*/
              ],
            ))));
  }
}

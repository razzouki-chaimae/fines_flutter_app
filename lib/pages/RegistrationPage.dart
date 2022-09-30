import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
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
        child:  Scaffold(
            // By defaut, Scaffold background is white
            // Set its value to transparent
            backgroundColor: Colors.transparent,
            body: Center(
                    child: Stack(children: [
                    Expanded(
                    child:Positioned(
                child: Image(
                    image: AssetImage(
                        'assets/images/registration_bg_rotated_2.png')),
                right: -68,
                bottom: -68,
              )),
                      Expanded(
                          child:Column(children: [
                Container(
                  margin: EdgeInsets.only(top: 48, bottom: 8),
                  child: Text("Let's get started!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFF272343),
                          fontWeight: FontWeight.bold,
                          fontSize: 32)),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 8),
                  child: Text("create your acount to get all features",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Color(0x66272343), fontSize: 20)),
                ),
                Container(
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3FBFB),
                      borderRadius: BorderRadius.circular(24)),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color(0xAA272343),
                      ),
                      hintText: "First Name",
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3FBFB),
                      borderRadius: BorderRadius.circular(24)),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: Color(0xAA272343),
                      ),
                      hintText: "Last Name",
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3FBFB),
                      borderRadius: BorderRadius.circular(24)),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.credit_card,
                        color: Color(0xAA272343),
                      ),
                      hintText: "Code d'Identité Nationale",
                      border: InputBorder.none,
                    ),
                    onChanged: (value) {},
                  ),
                ),
                /*
                Container(
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3FBFB),
                      borderRadius: BorderRadius.circular(24)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.phone,
                        color: Color(0xAA272343),
                      ),
                      hintText: "Numéro de Téléphone",
                      border: InputBorder.none,
                    ),
                    onChanged: (value){},
                  ),
                ),
                Container(
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3FBFB),
                      borderRadius: BorderRadius.circular(24)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.mail,
                        color: Color(0xAA272343),
                      ),
                      hintText: "Email",
                      border: InputBorder.none,
                    ),
                    onChanged: (value){},
                  ),
                ),*/
                Container(
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3FBFB),
                      borderRadius: BorderRadius.circular(24)),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Color(0xAA272343),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: Color(0xAA272343),
                        ),
                        hintText: "Mot de Passe",
                        border: InputBorder.none),
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  width: screenWidth * 0.8,
                  margin: EdgeInsets.symmetric(vertical: 8),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  decoration: BoxDecoration(
                      color: Color(0xFFF3FBFB),
                      borderRadius: BorderRadius.circular(24)),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: Color(0xAA272343),
                        ),
                        hintText: "Confirmer le Mot de Passe",
                        border: InputBorder.none),
                    onChanged: (value) {},
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationPage()));
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(vertical: 16, horizontal: 20)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFFFFD803)),
                      ),
                      child: Text(
                        "S'inscrire",
                        style: TextStyle(
                            color: Color(0xFF272343),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment
                          .center, //Center Row contents horizontally,
                      children: [
                        Text("Already have an account?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0x66272343), fontSize: 16)),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationPage()));
                            },
                            child: Text("Login here",
                                style: TextStyle(
                                    color: Color(0xFFFFD803),
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)))
                      ],
                    ))
              ]))
            ]))));
  }
}

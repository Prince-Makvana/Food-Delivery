import 'package:enjoyfood/Login.dart';
import 'package:enjoyfood/Register.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://t3.ftcdn.net/jpg/01/91/41/18/360_F_191411814_wNiMSY5h5U5jy6usxjxl9YUqQTYpyRhl.jpg'
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  height  : MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black45,
                        Colors.black54,
                      ],
                    ),
                  ),
                ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: Text(
                      "My Restaurant App",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      "Hello Explore Your Dream Recipe Food.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220),
                    child: ElevatedButton(
                        style: ButtonStyle(backgroundColor:WidgetStateProperty.all(Colors.red)),
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                        },
                        child:
                        Text("Register",style: TextStyle(color: Colors.white),)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35  ),
                    child: Row(
                      children:[
                        Expanded(
                          child: Container(),
                        ),
                        Container(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => Login()));
                            },
                            child: Text("Login",style: TextStyle(color: Colors.white),),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

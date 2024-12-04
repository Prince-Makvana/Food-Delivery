import 'package:enjoyfood/Register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey=GlobalKey<FormState>();
  var isPasswordHidden = true;
  final RegExp email = RegExp(r"@gmail.com$");
  final RegExp password = RegExp(r"[0-9]{6}");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Stack(
              children: [
            Container(
            decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                'https://images.rawpixel.com/image_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3Vwd2s2MTM2MTI4My13aWtpbWVkaWEtaW1hZ2Uta293YjI2M3QuanBn.jpg'
            ),
                  fit: BoxFit.cover,
                ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                Colors.black54,
                Colors.black87,
                ],
                ),
                ),)),
                Center(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80),
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
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Center(
                          child: Form(
                            key: _formkey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 30),
                                  child: TextFormField(
                                    keyboardType: TextInputType.emailAddress,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      icon: Icon(Icons.email,color: Colors.white),
                                      hintText: "Email Address",
                                      hintStyle: TextStyle(color: Colors.white),
                                    ),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return "Enter value";
                                      }
                                      else if(!email.hasMatch(value)){
                                        return "Inavalid Formate";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20),
                                  child: TextFormField(
                                    obscureText: isPasswordHidden,
                                    keyboardType: TextInputType.number,
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                      icon: Icon(Icons.key,color: Colors.white),
                                      hintText: "Password",
                                      suffixIcon: IconButton(
                                          icon: Icon(isPasswordHidden ? Icons.visibility : Icons
                                              .visibility_off),
                                          color: Colors.white,
                                          onPressed: () {
                                            setState(() {
                                              isPasswordHidden = !isPasswordHidden;
                                            });
                                          }),
                                      hintStyle: TextStyle(color: Colors.white),
                                    ),
                                    validator: (value){
                                      if(value!.isEmpty){
                                        return "Enter value";
                                      }
                                      else if(!password.hasMatch(value)){
                                        return "Inavalid Formate";
                                      }
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Container(
                                        child: Text("Forgot Password?",style: TextStyle(color: Colors.green),),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 110),
                                  child: ElevatedButton(
                                    style: ButtonStyle(backgroundColor:WidgetStateProperty.all(Colors.red) ),
                                      onPressed: (){
                                    if(_formkey.currentState!.validate()){
                                      // print("success");
                                      Navigator.pushNamed(context, "homePage");
                                    }
                                  },
                                      child:
                                      Text("Login",style: TextStyle(color: Colors.white),)
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 35),
                                  child: Row(
                                    children:[
                                      Expanded(
                                        child: Container(),
                                      ),
                                      Container(
                                        child: Text("Don't Have An Account?",style: TextStyle(color: Colors.white),),
                                      ),
                                      Container(
                                        child: TextButton(
                                          onPressed: () {
                                            Navigator.push(context,MaterialPageRoute(builder: (context) => Register()));
                                          },
                                          child: Text("Register",style: TextStyle(color: Colors.red),),
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

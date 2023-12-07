import 'package:flutter/material.dart';

import '../utils/Routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
        child: Column(
          children: [
            Image.asset("assets/images/hey.png",fit: BoxFit.cover,),
            const SizedBox(height: 20.0,),
            Text("Welcome",style: TextStyle(color: Colors.redAccent.shade100,fontSize: 30),),
            const SizedBox(height: 30,),
            TextFormField(
              decoration: const InputDecoration(
                focusColor: Colors.redAccent,
                labelText:"Username",
                hintText: "Enter username",
              ),
            ),
            const SizedBox(height: 20.0,),
            TextFormField(
              obscureText: true,
              obscuringCharacter: "*",
              decoration:  const InputDecoration(
                focusColor: Colors.redAccent,
                labelText:"Password",
                hintText: "Enter password",
              ),
            ),
            const SizedBox(height: 60.0,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.loginRoute);
                  },
                style: TextButton.styleFrom(backgroundColor: Colors.deepOrange,minimumSize: const Size(200, 45),),
                child: const Text("Login",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ],
        ),
      ),
    );
  }
}

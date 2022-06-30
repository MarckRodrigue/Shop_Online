import 'package:flutter/material.dart';

class PassWord extends StatefulWidget {
  const PassWord({ Key? key }) : super(key: key);

  @override
  State<PassWord> createState() => _PassWordState();
}

class _PassWordState extends State<PassWord> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mot de passe Oublié'),
      ),
      body: SingleChildScrollView(
        child:Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20,),
              height: 100,
              child :  TextFormField(
            decoration: InputDecoration(
              labelText: 'Your Email'.toUpperCase(),
              hintText: 'Entrer votre adresse email',
              icon: const Icon(
                Icons.mail,
                color: Colors.black,
                size: 16,
              ),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ),
          
            ),
            const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 13,
                ),
              ),
              child: Text(
                'sommettre'.toUpperCase(),
                style: const TextStyle(
                  fontFamily: 'montserrat',
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                 {
                  
                }
              }),

            
          ],
        ) ),
    );
  }
}
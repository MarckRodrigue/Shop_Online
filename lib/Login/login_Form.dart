import 'package:flutter/material.dart';
import 'package:shop_online/Login/formulaire.dart';
import 'package:shop_online/Login/password_forgot.dart';
import 'package:shop_online/main.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");

  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ), 
        title: const Text('Page de Connexion',
        style: TextStyle(
          fontFamily: 'roboto',
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),),
        centerTitle: true,
     ),

      body: SingleChildScrollView(
        child: Column(      
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
              child :  const 
                Text('WELCOME',
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),)
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25,),
              child : 
                const Text('Veillez remplir ces informations suivantes pour vous connecter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                                  color : Colors.grey,
                ),)
              
            ),
            const SizedBox(height: 30),
            Container(
      margin: const EdgeInsets.symmetric(horizontal: 25,),
      key: _formkey,  
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) => setState(() => _email = value),
            validator: (value) => value!.isEmpty || !emailRegex.hasMatch(value)
                ? 'Please enter a valid email'
                : null,
            decoration: InputDecoration(
              labelText: 'Your Email'.toUpperCase(),
              hintText: 'Entrer votre adresse email',
              icon: const Icon(
                Icons.mail,
                color: Colors.blue,
                size: 16,
              ),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            onChanged: (value) => setState(() => _password = value),
            validator: (value) =>
                value!.length < 8 ? 'Enter a password min 8 required.' : null,
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
              labelText: 'Password'.toUpperCase(),
              hintText: 'Entrer votre mot de passe',
              icon: const Icon(
                Icons.lock,
                color: Colors.blue,
                size: 16,
              ),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.visibility,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
          
          Container(
              
              margin: const EdgeInsets.symmetric(horizontal: 25,vertical: 130),
              child : const
                 Text('Mot de passe oublié?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color : Colors.grey,
                ),
                ),
                
          ),
           Column(
                children: [
                   GestureDetector(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PassWord(),
                  ),
                  );
              }
            ),
                ],
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
                'connexion'.toUpperCase(),
                style: const TextStyle(
                  fontFamily: 'montserrat',
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                /*  if (_formkey.currentState.validate())*/ {
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormCredit(),
                    ),
                  );*/
                }
              }),
              Container(
              
              margin: const EdgeInsets.symmetric(horizontal: 70 ,vertical: 380),
              child : const
                 Text('Ouvrir un Compte',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'roboto',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color : d_pink,
                ),
                ),
                
          ),
           Column(
                children: [
                   GestureDetector(
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Formulaire (),
                  ),
                  );
              }
            ),
                ],
          ),
             ],
      ),
    ),
          ],
        )
      )
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';


class Formulaire extends StatefulWidget {
  const Formulaire({ Key? key }) : super(key: key);

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ouvir un compte',
        style: TextStyle(
          fontFamily: 'roboto',
          fontSize: 27,
          fontWeight: FontWeight.bold,
         ),),
         centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: const Text(
            'Remplissez les Informations suivantes',
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          height: 20,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nom de famille'.toUpperCase(),
                  hintText: 'Entrer votre nom de famille',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
               TextFormField(
                decoration: InputDecoration(
                  labelText: 'Prenom'.toUpperCase(),
                  hintText: 'Votre Prenom',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
                            TextFormField(
                decoration: InputDecoration(
                  labelText: 'sexe'.toUpperCase(),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
                            TextFormField(
                decoration: InputDecoration(
                  labelText: 'Téléphone'.toUpperCase(),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                keyboardType: TextInputType.number,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Nationalité'.toUpperCase(),
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
               SizedBox(height: 20),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    primary: Colors.blue,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                  ),
                  child: Text(
                    'Soumettre'.toUpperCase(),
                    style: const TextStyle(
                      fontFamily: 'roboto',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  onPressed: () {
                    /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FormCredit(),
                  ),
                );*/
                  }),
        ],
      )
        )
      ]),
    );
  }
}
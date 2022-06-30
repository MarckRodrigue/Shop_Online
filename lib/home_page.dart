import 'package:flutter/material.dart';
import 'package:shop_online/Search_Section.dart';
import 'package:shop_online/articles_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Home Page",
        style: TextStyle(
          fontSize: 30,
          color: Colors.pinkAccent,
          fontWeight: FontWeight.bold,
        ),),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.pinkAccent,
              ))
          ],
          centerTitle: true,
      ),
      backgroundColor: Colors.grey[200],
      body:SingleChildScrollView(
         child : Column(
        children:  [
          const Searchsection(),
          ArticlesSection(),

        ],
      ),
      )
      
    );
  }
}




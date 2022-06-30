import 'package:flutter/material.dart';
import 'package:shop_online/Login/login_Form.dart';
import 'package:shop_online/main.dart';

class ArticlesSection extends StatelessWidget {
  late final List ArticlesList = [
    {
      'title': 'Sac pour Shopping',
      'price': '10 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-angela-roma-7319324.jpg',
    },
        {

      'title': 'Tenis de Sport',
      'price': '25 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-zain-ali-1027130.jpg',
    },
        {

      'title': 'Chaussures NIKE',
      'price': '15 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-ray-piedra-1456706.jpg',
    },
        {

      'title': 'Chaussures de Sport',
      'price': '10000',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-rachel-claire-6773813.jpg',
    },
        {

      'title': 'Sac de Voyage',
      'price': '30 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-max-vakhtbovych-6394537.jpg',
    },
        {

      'title': 'Valise & Chapeaux',
      'price': '40 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-karolina-grabowska-4210866.jpg',
    },
        {
      'title': 'Pantalon Jeans',
      'price': '10 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-jens-mahnke-1161538.jpg',
    },
        {

      'title': 'Talons à Sortir',
      'price': '25 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-alexandra-maria-336372.jpg',
    },
        {

      'title': 'Sac de Sortie',
      'price': '8 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-diana-light-4830927.jpg',
    },
        {
      'title': 'Tshirt Blanc',
      'price': '5 000 Fcfa',
      'review': 70,
      'description': 'Je vends, Je perds venez me Tromper!!!', 
      'images': 'images/pexels-monstera-6311652.jpg',
    },
  ];      
  @override
  Widget build(BuildContext context) {
    return Column(
        children: ArticlesList.map((Articles){
          return ArticlesCard(Articles);
        }).toList(),
      );
  }
}

class ArticlesCard extends StatelessWidget {
  final Map ArticlesData;
  ArticlesCard(this.ArticlesData);

  @override
  Widget build(BuildContext context) {
    return 
          Container(
      margin: const EdgeInsets.all(10),
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        boxShadow : [
            BoxShadow(blurRadius: 6,
            offset: Offset(0, 3)),
          ]
      ),
      child: Column(
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage(ArticlesData['images']),
                fit: BoxFit.cover,
                ),
            ),
            child: Stack(children: [
              Positioned(
                top: 10,
                right: -12,
                child: MaterialButton(
                  color: Colors.white,
                  shape: const CircleBorder(),
                  onPressed: (){},
                child: const Icon(
                  Icons.favorite_outline_rounded,
                  color: d_pink,
                  size: 23,
                ),))
            ],),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(ArticlesData['title'],
                style: const TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),),
                Text(
                  ArticlesData['price'],
                  style: const TextStyle(
                    fontFamily: 'montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 2,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(ArticlesData['description'],
                style: const TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),)
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(18, 10, 10, 0),
            child: Row(
              children: [
                Row(
                  children: const [
                    Icon(Icons.star_rate,
                    color: d_pink,
                    size: 15,),
                     Icon(Icons.star_rate,
                    color: d_pink,
                    size: 15,),
                     Icon(Icons.star_rate,
                    color: d_pink,
                    size: 15,),
                     Icon(Icons.star_rate,
                    color: d_pink,
                    size: 15,),
                     Icon(Icons.star_border,
                    color:d_pink,
                    size: 15,),
                  ],
                  ),
                  const SizedBox(width: 10),
                Text(ArticlesData['review'].toString() + ' Reviews',
                 style: const TextStyle(
                  fontFamily: 'montserrat',
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),)
              ],
            ),

          ),
       
                      ],
        
      ),
      
    );
        
      
    
  }
}
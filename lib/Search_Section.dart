import 'package:flutter/material.dart';
import 'package:shop_online/main.dart';


class Searchsection extends StatefulWidget {
  const Searchsection({ Key? key }) : super(key: key);

  @override
  State<Searchsection> createState() => _SearchsectionState();
}

class _SearchsectionState extends State<Searchsection> {
  @override
  Widget build(BuildContext context) {
    return Container(
       height: 100,
       color: Colors.grey[200],
       padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
       child: Column(
        children: [
          Row(
            children: [
              Expanded(child: Container(
                padding: const EdgeInsets.only(left: 10),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(0,3),
                    )
                  ]
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'search',
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,                  ),
                ),
                
              )),
              const SizedBox(width: 10,),
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,4),
                  ),
                  
                ],
                borderRadius : BorderRadius.all(
                  Radius.circular(30),
                )

                ),
                child: ElevatedButton(
                  onPressed: (){},
                  child: const Icon(Icons.search,
                  size: 30,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    primary: d_pink 
                  ),
                ),
              )
            ],
          )
        ],
       ),
      
    );
  }
}
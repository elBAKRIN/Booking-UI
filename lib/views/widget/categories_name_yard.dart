

import 'package:flutter/material.dart';


class CategoriesNameYard extends StatelessWidget {
  const CategoriesNameYard({super.key,required this.name,required this.more});

  final String name;
  final bool more;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 35,
      child: Padding(
        padding: const EdgeInsets.only(left: 16,right: 16,top: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(more?"شاهد المزيد":"",style: const TextStyle(color: Color.fromARGB(255, 134, 134, 134),fontSize: 14,fontWeight: FontWeight.w400,fontFamily: "Almarai"),),
            Text(name,style: const TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w700,fontFamily: "Almarai"),),
          ],
        ),
      ),
    );
  }
}
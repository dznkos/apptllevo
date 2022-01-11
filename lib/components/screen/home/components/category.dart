import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({
    Key? key, required this.name, required this.image,
  }) : super(key: key);

  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
          ),
          child: Image.asset(image),
        ),
        Text(name, 
        style: Theme.of(context).textTheme.headline2,)
        
      ],
    );
  }
}
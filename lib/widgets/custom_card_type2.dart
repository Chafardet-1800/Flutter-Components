import 'package:flutter/material.dart';
import 'package:flutter_components_test/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;

  final String? imageName;

  const CustomCardType2({
      super.key, 
      required this.imageUrl, 
      this.imageName
    });

  @override
  Widget build(BuildContext context) {
    return  Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3)
      ),
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [

          Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.all(20),
            child: FadeInImage(
              image: NetworkImage(imageUrl), 
              placeholder: const AssetImage('assets/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
          ),

          Container(
            decoration: const BoxDecoration(color: Colors.white),
            alignment: AlignmentDirectional.centerEnd,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Text( 
              imageName ?? '',
              style: const TextStyle(
                fontFamily: 'DancingScript',
                fontSize: 18,                
              )
            ),
          )

        ],
      ),
    );
  }

}
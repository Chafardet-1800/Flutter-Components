import 'package:flutter/material.dart';

import 'package:flutter_components_test/models/custom_card.dart';
import 'package:flutter_components_test/widgets/widgets.dart';

class CardScreen extends StatelessWidget {

  static final cardsArray = <CustomCardModel>[
    CustomCardModel(icon: Icons.back_hand_outlined, imageUrl: '', title: 'Okey', subtitle: '', imageName: '' ),
    CustomCardModel(icon: Icons.back_hand, imageUrl: '', title: 'Not okey', subtitle: '', imageName: '' ),
    CustomCardModel(icon: Icons.home_filled, imageUrl: 'https://images.hola.com/imagenes/mascotas/20211210201050/gato-pierde-peso-causas/1-29-398/gato-mira-camara-t.jpg?tx=w_680', title: '', subtitle: '', imageName: 'Un gato que juzga' ),
    CustomCardModel(icon: Icons.home_filled, imageUrl: 'https://www.cuerpomente.com/medio/2023/07/11/gatos-gordos_3f14078c_230711093058_1280x720.jpg', title: '', subtitle: '', imageName: 'Un gato gordo' ),
    CustomCardModel(icon: Icons.home_filled, imageUrl: 'https://nupec.com/wp-content/uploads/2021/02/Captura-de-pantalla-2021-02-08-a-las-13.59.48.png', title: '', subtitle: '', imageName: 'Un gato triste' ),
    CustomCardModel(icon: Icons.home_filled, imageUrl: 'https://media.es.wired.com/photos/657cb5b81e17b099f8f9e15c/16:9/w_3008,h_1692,c_limit/gatos%20172050389.jpg', title: '', subtitle: '', imageName: 'Un gato cazando' ),
    CustomCardModel(icon: Icons.home_filled, imageUrl: 'https://unamglobal.unam.mx/wp-content/uploads/2022/11/gatosmalos.jpg', title: '', subtitle: '', imageName: 'Un gato molesto' ),
  ];
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      // body: ListView(
      //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      //   children: const [

      //     CustomCard(
      //       icon: Icons.add_box_sharp,
      //       title: 'Primera opcion',
      //     ),

      //     CustomCard(
      //       icon: Icons.add_box_sharp,
      //       title: 'Segunda opcion',
      //       subtitle: 'Esta es la buena',
      //     ),

      //     CustomCardType2(
      //       imageUrl: 'https://estaticos-cdn.prensaiberica.es/clip/4e1211c1-1520-41a7-aabb-42c2e03d1731_alta-libre-aspect-ratio_default_0.jpg',
      //     ),
      //     SizedBox(height: 20,),
      //     CustomCardType2(
      //       imageName: 'Un gato amargado',
      //       imageUrl: 'https://fotografias.lasexta.com/clipping/cmsimages02/2019/01/25/DB41B993-B4C4-4E95-8B01-C445B8544E8E/69.jpg?crop=4156,2338,x0,y219&width=1280&height=720&optimize=low&format=jpg',
      //     ),
      //     SizedBox(height: 20,),
      //     CustomCardType2(
      //       imageName: 'Un gato jugeton',
      //       imageUrl: 'https://static.nationalgeographicla.com/files/styles/image_3200/public/nationalgeographic_1468962.jpg?w=1600&h=900',
      //     ),
      //     SizedBox(height: 20,),
      //     CustomCardType2(
      //       imageName: 'Un gato amargado',
      //       imageUrl: 'https://static.nationalgeographic.es/files/styles/image_3200/public/75552.ngsversion.1422285553360.jpg?w=1600&h=1067',
      //     ),
      //     SizedBox(height: 20,),
      //     CustomCardType2(
      //       imageName: 'Un gato deprimido',
      //       imageUrl: 'https://s1.eestatic.com/2021/08/19/curiosidades/mascotas/605450368_200857803_1706x960.jpg',
      //     ),
      //     SizedBox(height: 200,),
      //   ],
      // ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        itemBuilder: (BuildContext context, int index) {
          
          return cardsArray[index].imageUrl.isNotEmpty
          
          ? CustomCardType2(
            imageUrl: cardsArray[index].imageUrl,
            imageName: cardsArray[index].imageName,
          )
          
          : CustomCard(
            icon: cardsArray[index].icon, 
            title: cardsArray[index].title,
            subtitle: cardsArray[index].subtitle
          );

        }, 
        separatorBuilder: (_, __) => const SizedBox(height: 20), 
        itemCount: cardsArray.length),
    );
  }
}
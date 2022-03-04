import 'package:componentes_leccion/Widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CARD WIDGET'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: const[
          Customcard_1(),
          SizedBox(height: 10,),
          CustomCardType2(texto: 'Brownies de chocolate', url1: 'https://www.splenda.com/wp-content/uploads/2020/05/mixed-berry-muffins-2000x1000.jpg'),
          SizedBox(height: 10,),
          CustomCardType2(url1: 'https://www.splenda.com/wp-content/themes/bistrotheme/assets/recipe-images/fudge-brownies.jpg'),
          SizedBox(height: 10,),
          CustomCardType2(url1: 'https://i.ytimg.com/vi/2_FUW8y2J1M/maxresdefault.jpg'),
          SizedBox(height: 100,),
        ],
      )
    );
  }
}


import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatares'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              //child: Text('SL'),
              backgroundImage: NetworkImage('https://www.tonica.la/__export/1574884788101/sites/debate/img/2019/11/27/stormtrooper_1_1.jpg_1037907269.jpg'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
           maxRadius: 110,
           backgroundImage: NetworkImage('https://www.tonica.la/__export/1574884788101/sites/debate/img/2019/11/27/stormtrooper_1_1.jpg_1037907269.jpg'),
           //child: Text('AvatarScreen')
        ),
      ),
    );
  }
}
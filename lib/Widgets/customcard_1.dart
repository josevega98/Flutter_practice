import 'package:componentes_leccion/theme/app_theme.dart';
import 'package:flutter/material.dart';

class Customcard_1 extends StatelessWidget {
  const Customcard_1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
      children: [ 
          const ListTile(
            leading: Icon(Icons.phone_android,color: AppTheme.primary,),
            title: Text('Hola mundo Ga'),
            subtitle: Text(''),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (){}, 
                  child: const Text('Cancelar'),
                  style: AppTheme.buttonTheme,
                  ),
                TextButton(
                onPressed: (){}, 
                child: const Text('Cancelar'),
                style: AppTheme.buttonTheme,
                ),
              ],
            ),
          )
        ],
        )
      );
  }
}
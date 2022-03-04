import 'package:componentes_leccion/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String url1;
  final String? texto;
  const CustomCardType2({Key? key, required this.url1, this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 25,
      shadowColor: AppTheme.primary.withOpacity(0.3),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(url1),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          if (texto != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(texto!))
        ],
      ),
    );
  }
}


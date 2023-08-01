import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';

class TextSized extends StatelessWidget {
  final String text;
  final color;
  const TextSized({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final Size TextSize = _Sized(text);
    return Container(
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                fontSize: 16, color: color, fontWeight: FontWeight.w700),
            maxLines: 1,
            softWrap: false,
            overflow: TextOverflow.clip,
          )
          ,
          SizedBox(height: 5), 
          Row(children: [
            for(int i = 0; i < TextSize.width/5; i++)
            i.isEven?Container(width: 4,
            color: color,
            height: 2,
            ):Container(width: 4,
            color: Colors.white,
            height: 2,
            )
          ],)
        ],
      ),
    );
  }

  Size _Sized(String text) {
    final TextPainter txt = TextPainter(
      text: TextSpan(
        text: text,
        style:
            TextStyle(fontSize: 16, color: color, fontWeight: FontWeight.w700),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);
    return txt.size;
  }
}

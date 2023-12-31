import 'package:flutter/material.dart';

import '../../../domain/entities/message.dart';

class MyMessageBubble extends StatelessWidget {
  final Message message;
  const MyMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(message.text, style: const TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5,)
      
      ],
    );
  }
}
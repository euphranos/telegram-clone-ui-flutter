import 'package:flutter/material.dart';

class SendWidget extends StatelessWidget {
  const SendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      color: Colors.white,
      child: Center(
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.emoji_emotions_outlined,
                size: 30,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            Expanded(
                child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Mesaj yazın',
                border: InputBorder.none,
              ),
            )),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.filter_list_rounded,
                size: 30,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mic_outlined,
                size: 30,
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

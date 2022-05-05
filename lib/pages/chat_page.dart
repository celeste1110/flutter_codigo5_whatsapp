import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/date_dummy.dart';
import '../widgets/item_chat_widget.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemChatWidget(
              chatModel: chatList[index],
          );
        },
      ),
    );
  }
}

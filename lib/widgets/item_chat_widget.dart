import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/chat_model.dart';
import '../pages/chat_detail_page.dart';

class ItemChatWidget extends StatelessWidget {
  ChatModel chatModel;
  ItemChatWidget({required this.chatModel});


  @override
  Widget build(BuildContext context) {

    // return Container(
    //
    //   margin: const EdgeInsets.symmetric(vertical: 0.6, horizontal: 5.0),
    //   padding:
    //   const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
    //   decoration: BoxDecoration(color: Colors.white, boxShadow: [
    //     BoxShadow(
    //       color: Colors.black.withOpacity(0.05),
    //       blurRadius: 12,
    //       offset: const Offset(4, 4),
    //     ),
    //   ]),
    //   child: Row(
    //     children: [
    //       ClipRRect(
    //         borderRadius: BorderRadius.circular(50.0),
    //         child: Image.network(
    //           chatModel.avatarURL,
    //           height: 60.0,
    //           width: 60.0,
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //       const SizedBox(
    //         width: 8.0,
    //       ),
    //       Expanded(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Text(
    //               chatModel.username,
    //               style: GoogleFonts.montserrat(
    //                 color: Color(0xff3E4752),
    //                 fontWeight: FontWeight.w500,
    //                 fontSize: 17,
    //               ),
    //             ),
    //             const SizedBox(
    //               height: 4.0,
    //             ),
    //             Text(
    //               chatModel.isTyping ? "Typing..." : chatModel.message,
    //               style: GoogleFonts.montserrat(
    //                 color: chatModel.isTyping ? Color(0xff01C851) : Colors.black.withOpacity(0.45),
    //                 fontWeight: FontWeight.w400,
    //                 fontSize: 12,
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         children: [
    //           Text(
    //             chatModel.time,
    //             style: GoogleFonts.montserrat(
    //               //color: Color(0xff3E4752).withOpacity(0.45),
    //               color:   chatModel.countMessage>0? Color(0xff01C851):Colors.black.withOpacity(0.4),
    //               fontWeight: FontWeight.w400,
    //               fontSize: 12.0,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 4.0,
    //           ),
    //          chatModel.countMessage>0? Container(
    //             alignment: Alignment.center,
    //             height: 20,
    //             width: 20,
    //             decoration: BoxDecoration(
    //               color: Color(0xff01C851),
    //               shape: BoxShape.circle,
    //             ),
    //             child: Text(
    //               chatModel.countMessage.toString(),
    //               textAlign: TextAlign.center,
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 10,
    //               ),
    //             ),
    //           ):SizedBox(),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    return Container(
      margin: const EdgeInsets.only(bottom: 8.0),
      child: ListTile(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetailPage()));
        },
        leading: CircleAvatar(
          backgroundColor: Colors.black12,
          radius: 26,
          backgroundImage: NetworkImage(
            chatModel.avatarURL,
          ),
        ),
        title: Text(
          chatModel.username,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          chatModel.isTyping ? "Typing..." : chatModel.message,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 13.0,
              color: chatModel.isTyping ? Color(0xff01C851) : Colors.black.withOpacity(0.45)
          ),
        ),
        trailing: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              chatModel.time,
              style: TextStyle(
                fontSize: 12.0,
                // color: Colors.black.withOpacity(0.45)
                color: chatModel.countMessage > 0 ? Color(0xff01C851) : Colors.black.withOpacity(0.45),
              ),
            ),
            chatModel.countMessage > 0 ? Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff01C851),
              ),
              alignment: Alignment.center,
              child: Text(
                chatModel.countMessage.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ) : SizedBox(),
          ],
        ),
      ),
    );
  }
}

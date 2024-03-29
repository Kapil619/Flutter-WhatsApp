import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/common/enums/message_enum.dart';
// import 'package:whatsapp/features/chat/widgets/video_player_item.dart';

class DisplayTextImageGIF extends StatelessWidget {
  final String message;
  final MessageEnum type;
  const DisplayTextImageGIF(
      {required this.message, required this.type, super.key});

  @override
  Widget build(BuildContext context) {
    return type == MessageEnum.text
        ? Text(
            message,
            style: const TextStyle(
              fontSize: 16,
            ),
          )
        // : type == MessageEnum.video
        //     ? VideoPlayerItem(videoUrl: message) // video player not working
        : CachedNetworkImage(imageUrl: message);
  }
}

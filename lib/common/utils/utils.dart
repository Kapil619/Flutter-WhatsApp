import 'dart:io';

// import 'package:enough_giphy_flutter/enough_giphy_flutter.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void showSnackbar(
    {required BuildContext context,
    required String content,
    Color? color,
    Color? textColor}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content, style: TextStyle(color: textColor)),
      backgroundColor: color,
    ),
  );
}

Future<File?> pickImageFromfGallery(BuildContext context) async {
  File? image;
  try {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      image = File(pickedImage.path);
    }
  } catch (e) {
    showSnackbar(context: context, content: e.toString(), color: Colors.red);
  }
  return image;
}

Future<File?> pickVideoFromfGallery(BuildContext context) async {
  File? video;
  try {
    final pickedVideo =
        await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (pickedVideo != null) {
      video = File(pickedVideo.path);
    }
  } catch (e) {
    showSnackbar(context: context, content: e.toString(), color: Colors.red);
  }
  return video;
}

// Future<GiphyGif?> pickGIF(BuildContext context) async {
//   GiphyGif? gif;
//   try {
//     gif = await Giphy.getGif(
//         context: context, apiKey: "u0Wrzpg2lC7DM57GpGgbY18iRmDhIqlk");
//   } catch (e) {
//     showSnackbar(context: context, content: e.toString(), color: Colors.red);
//   }
//   return gif;
// }

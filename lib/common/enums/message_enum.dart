enum MessageEnum {
  text('text'),
  image('image'),
  video('video'),
  audio('audio'),
  gif('gif');

  const MessageEnum(this.type);
  final String type;
}

extension ConvertMessage on String {
  MessageEnum toEnum() {
    switch (this) {
      case 'audio':
        return MessageEnum.audio;
      case 'image':
        return MessageEnum.image;
      case 'video':
        return MessageEnum.video;
      case 'gif':
        return MessageEnum.gif;
      case 'text':
        return MessageEnum.text;
      default:
        return MessageEnum.text;
    }
  }
}

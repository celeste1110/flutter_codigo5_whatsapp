import '../models/chat_message.dart';
import '../models/chat_model.dart';

List<ChatModel> chatList = [
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    username: "Ximena Lopez",
    message: "Ya he enviado el encargo",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    username: "Juan Carlos Lopez",
    message: "Hola como estas",
    time: "10:40",
    countMessage: 3,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/1587009/pexels-photo-1587009.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    username: "Karla Gonzales",
    message: "Fuistes al evento..",
    time: "15:22",
    countMessage: 0,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/846741/pexels-photo-846741.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
    username: "Luis Martinez",
    message: "sigues esperando?.",
    time: "16:22",
    countMessage: 1,
    isTyping: true,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/372042/pexels-photo-372042.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    username: "Ximena Lopez",
    message: "Ya he enviado el encargo",
    time: "10:20",
    countMessage: 1,
    isTyping: false,
  ),
  ChatModel(
    avatarURL:
        "https://images.pexels.com/photos/874158/pexels-photo-874158.jpeg?auto=compress&cs=tinysrgb&h=650&w=940",
    username: "Juan Carlos Lopez",
    message: "Hola como estas",
    time: "10:40",
    countMessage: 3,
    isTyping: true,
  ),
];

List<ChatMessage> chatMessageList = [
  ChatMessage(
    messageContent: ("Hola Luis , como estas?"),
    messageType: "other",
  ),
  ChatMessage(
    messageContent: ("Hola , estoy bien y tu como estas"),
    messageType: "me",
  ),
  ChatMessage(
    messageContent: ("Capacitandome en desarrollo"),
    messageType: "other",
  ),
  ChatMessage(
    messageContent: ("Que bueno"),
    messageType: "me",
  ),
];

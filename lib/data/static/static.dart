import 'package:chat_screen/core/constants/appimages.dart';
import 'package:chat_screen/data/model/chat_message.dart';
import 'package:chat_screen/data/model/chat_model.dart';
import 'package:chat_screen/presentation/screen/group_chat_screen.dart';
import 'package:flutter/material.dart';

List<ChatModel> pinnedChatModel = [
  ChatModel(
    name: "Mike \n Wazowski",
    image: AppImages.mikeWazowski,
    body: "That's awesome! ...",
    color: Colors.grey.shade100,
  ),
  ChatModel(
    name: "Darlene \n Steward",
    image: AppImages.darleneSteward,
    body: "Pls take a look at the... ",
    color: Colors.blue.shade100,
  ),
  ChatModel(
    name: "Gregory \n Robertson",
    image: AppImages.gregoryRobertson,
    body: "Preparing for next vac...",
    color: Colors.grey.shade100,
  ),
  ChatModel(
    name: "Dwight \n Wilson",
    image: AppImages.dwightWilson,
    body: "I'd like to watch ... ",
    color: Colors.grey.shade100,
  ),
];

List<ChatModel> recentChatModel = [
  ChatModel(
      name: "Darlene Steward",
      image: AppImages.darleneSteward,
      body: "Pls take a look at the images.",
      color: null),
  ChatModel(
      name: "Fullsnack Designers",
      image: AppImages.fullsnackDesigners,
      body: "Hello guys, we have discussed about ...",
      color: null),
  ChatModel(
      name: "Lee Williamson",
      image: AppImages.leeWilliamson,
      body: "Yes, that's gonna work, hopefully.",
      color: null),
  ChatModel(
      name: "Ronald Mccoy",
      image: AppImages.ronaldMccoy,
      body: "Thanks dude 😉",
      color: null),
  ChatModel(
      name: "Albert Bell",
      image: AppImages.albertBell,
      body: "I'm happy this anime has such grea...",
      color: null),
];
List<ChatMessage> chatMessage = [
  ChatMessage(
      image: Image.asset(AppImages.recOne),
      message:
          "Hello guys, we have discussed about\n post-corona vacation plan and our\n decision is to go to Bali. We will have a very\n big party after this corona ends! These are\n some images about our destination",
      type: MessageType.Sender,
      name: "mike Mazowski"),
  ChatMessage(
      image: Image.asset(AppImages.recOne),
      message: "",
      type: MessageType.Sender,
      name: "mike Mazowski"),
  ChatMessage(
      image: Image.asset(AppImages.recOne),
      message:
          "That's very nice place! you guys \n made a very good decision. \n Can't wait to go on vacation!",
      type: MessageType.Receiver,
      name: "Amena"),
];

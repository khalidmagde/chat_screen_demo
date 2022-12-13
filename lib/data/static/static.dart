import 'package:chat_screen/core/constants/appimages.dart';
import 'package:chat_screen/data/model/chat_message.dart';
import 'package:chat_screen/data/model/chat_model.dart';
import 'package:chat_screen/presentation/screen/group_chat_screen.dart';
import 'package:flutter/material.dart';

List<ChatModel> pinnedChatModel = [
  ChatModel(
      name: "Mike \n Wazowski",
      image: AppImages.mikeWazowski,
      body: "That's awesome! ..."),
  ChatModel(
      name: "Darlene \n Steward",
      image: AppImages.darleneSteward,
      body: "Pls take a look at the..."),
  ChatModel(
      name: "Gregory \n Robertson",
      image: AppImages.gregoryRobertson,
      body: "Preparing for next vac..."),
  ChatModel(
      name: "Dwight \n Wilson",
      image: AppImages.dwightWilson,
      body: "I'd like to watch ... "),
];

List<ChatModel> recentChatModel = [
  ChatModel(
      name: "Darlene Steward",
      image: AppImages.darleneSteward,
      body: "Pls take a look at the images."),
  ChatModel(
      name: "Fullsnack Designers",
      image: AppImages.fullsnackDesigners,
      body: "Hello guys, we have discussed about ..."),
  ChatModel(
      name: "Lee Williamson",
      image: AppImages.leeWilliamson,
      body: "Yes, that's gonna work, hopefully."),
  ChatModel(
      name: "Ronald Mccoy",
      image: AppImages.ronaldMccoy,
      body: "Thanks dude 😉"),
  ChatModel(
      name: "Albert Bell",
      image: AppImages.albertBell,
      body: "I'm happy this anime has such grea..."),
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

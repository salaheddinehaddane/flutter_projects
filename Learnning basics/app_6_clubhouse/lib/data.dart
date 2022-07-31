import 'package:app_6_clubhouse/user.dart';

import 'Room.dart';

const User currentUser = User(
  firstName:"Salah Eddine",
  lastName : "Haddane",
  imageUrl:"https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
  );

const List<User> allUsers= [
  User(
  firstName:"Said",
  lastName : "Nacir",
  imageUrl:"https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
  ),
  User(
  firstName:"John",
  lastName : "Doe",
  imageUrl:"https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
  ),
  User(
  firstName:"Fateh",
  lastName : "Nafi",
  imageUrl:"https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
  ),
  User(
  firstName:"Anastasia",
  lastName : "Jiko",
  imageUrl:"https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
  ),
  User(
  firstName:"Rowk",
  lastName : "Asi",
  imageUrl:"https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
  )
];

final List<Room> roomList=[
  Room(
    club:'Flutter time',
    name:'Special time to play with Flutter & Dart',
    speakers: (List<User>.from(allUsers)..shuffle()).getRange(0,4).toList(), // Shuffle is to get names randomly // getRange is a function to get 0 names to 4 names max
    followedBySpeakers:List<User>.from(allUsers)..shuffle(),
    others:List<User>.from(allUsers)..shuffle(),
  )
];
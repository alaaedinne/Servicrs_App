import 'package:flutter/material.dart';
import 'package:servicef/pages/Categories.dart';
import 'package:servicef/pages/Employe_type.dart';
import 'package:servicef/pages/Login_Signup/welcom.dart';
import 'package:servicef/pages/Rooms_details.dart';
import 'package:servicef/pages/UsersPart.dart';
import 'package:servicef/pages/accept_chauffeur.dart';
import 'package:servicef/pages/chauffeur_info.dart';
import 'package:servicef/pages/doctor_interface.dart';
import 'package:servicef/pages/dtdoctor.dart';
import 'package:servicef/pages/employeprofile.dart';
import 'package:servicef/pages/home_screen.dart';
import 'package:servicef/pages/room_employe.dart';
import 'package:servicef/pages/select_room.dart';
import 'package:servicef/pages/taxi_details.dart';
import 'pages/Home.dart';
import 'pages/category.dart';
import 'pages/doctor.dart';
import 'pages/ddetails.dart';
import 'pages/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Service rapide",
      home: welcome(),
      routes: {
        "homescreen": (context) {
          return Home_screen();
        },
        "userspage": (context) {
          return UsersPart();
        },
        "categories": (context) {
          return category();
        },
        "home": (context) {
          return UsersPart();
        },
        "doctor": (context) {
          return doctor();
        },
        "ddetails": (context) {
          return rooms();
        },
        "first": (context) {
          return Home();
        },
        "employe_type": (context) {
          return employe_type();
        },
        "dtdoctor": (context) {
          return doctor_interface();
        },
        "employeprofile": (context) {
          return employeprofile();
        },
        "selectroom": (context) {
          return select_room();
        },
        "transport": (context) {
          return chose_taxi();
        },
        "chauffeur": (context) {
          return chauffeur();
        },
        "accept": (context) {
          return accepted_chauffeur();
        },
        "Profile": (context) {
          return profile();
        },
        "createroom": (context) {
          return create_room();
        },
        "welcom": (context) {
          return welcome();
        },
      },
    );
  }
}

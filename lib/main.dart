import 'package:flutter/material.dart';
import 'package:untitled/secreens/calendernoresults.dart';
import 'package:untitled/secreens/ceatetask.dart';
import 'package:untitled/secreens/completedtask.dart';
import 'package:untitled/secreens/edithabit.dart';
import 'package:untitled/secreens/editspace.dart';
import 'package:untitled/secreens/forcalendar.dart';
import 'package:untitled/secreens/forgetpassword.dart';
import 'package:untitled/secreens/forgetpasswordcode.dart';
import 'package:untitled/secreens/futuretask.dart';
import 'package:untitled/secreens/habitsecreen.dart';
import 'package:untitled/secreens/habitsecreenactive.dart';
import 'package:untitled/secreens/home.dart';
import 'package:untitled/secreens/homewithtask.dart';
import 'package:untitled/secreens/loginsecreen.dart';
import 'package:untitled/secreens/notification.dart';
import 'package:untitled/secreens/profileburthday.dart';
import 'package:untitled/secreens/profileemail.dart';
import 'package:untitled/secreens/profilename.dart';
import 'package:untitled/secreens/profilepassord.dart';
import 'package:untitled/secreens/profilephone.dart';
import 'package:untitled/secreens/resetpassowrd.dart';
import 'package:untitled/secreens/searchNoResults.dart';
import 'package:untitled/secreens/searchResults.dart';
import 'package:untitled/secreens/searchsecreen.dart';
import 'package:untitled/secreens/signup.dart';
import 'package:untitled/secreens/spacelist.dart';
import 'package:untitled/secreens/onbording.dart';
import 'package:untitled/secreens/profilesecreen.dart';
import 'package:untitled/secreens/spacelistfrombiging.dart';
import 'package:untitled/secreens/splach.dart';
import 'package:untitled/secreens/tasklist.dart';
import 'package:untitled/secreens/tasklistfrombiging.dart';
import 'package:untitled/secreens/tasklistnotactive.dart';
import 'package:untitled/widgets/creathabit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/editspace',
      routes: {
        '/forcalendar':(context)=>ForCalendar(),
        '/splach':(context)=>SplachSec(),
        '/onbording':(context)=>OnbordingAh(),
        '/calendernoresults':(context)=>CalenderNoResults(),
        '/spacelist':(context)=>SpaceList(),
        '/home':(context)=>HomeSecreen(),
        '/homewithtask':(context)=>HomeWithTask(),
        '/futuretask':(context)=>FutureTask(),
        '/completedtask':(context)=>CompletedTask(),
        '/profilesecreen':(context)=>ProfileSecreenAH(),
        '/profilepassword':(context)=>ProfilePasword(),
        '/profilename':(context)=>ProfileName(),
        '/profilephone':(context)=>ProfilePhone(),
        '/profileemail':(context)=>ProfileEmail(),
        '/profileburthday':(context)=>BurthdayProifle(),
        '/searchsecreen':(context)=>SearchSecreen(),
        '/searchResults':(context)=>SearchResults(),
        '/searchNoResults':(context)=>SearchNoResults(),
        '/createtask':(context)=>CreateTask(),
        '/tasklist':(context)=>TaskList(),
        '/forgetpassord':(context)=>ForgetPasswordScreenRa(),
        '/forgetpassordcode':(context)=>ForgetPasswordCodeScreenRa(),
        '/loginsecreen':(context)=>LoginScreenRa(),
        '/resetpassword':(context)=>ResetPasswordScreenRa(),
        '/signup':(context)=>SignupScreenRa(),
        '/habitsecreen':(context)=>HabitSecreen(),
        '/creathabit':(context)=>CreatHabit(),
        '/notification':(context)=>NotificationSecreen(),
        '/edithabit':(context)=>EditHabitSecreen(),
        '/habitsecreenactive':(context)=>HabitSecreenActive(),
        '/tasklistnotactive':(context)=>TaskListNotActive(),
        '/tasklistfrombiging':(context)=>TaskListFromBiging(),
        '/spacelistfrombiging':(context)=>SpaceListFromBiging(),
        '/editspace':(context)=>EditSpace(),
      }
    );
  }
}
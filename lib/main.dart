import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:to_do_list_app/calendar.dart';
import 'package:to_do_list_app/group.dart';
import 'package:to_do_list_app/home.dart';
import 'package:to_do_list_app/notification.dart';
import 'package:provider/provider.dart';
import 'package:to_do_list_app/provider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageIndex = 0;
  final pages = [HomePage(), CalendarPage(), NotiPage(), GroupPage()];


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ToDoListProvider(),
        )
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Center(child: pages[pageIndex]),
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            bottomNavigationBar: 
              BottomNavigationBar(
                onTap: (index) => setState(() {
                  pageIndex = index;
                }),
                currentIndex: pageIndex,
                backgroundColor: Color.fromARGB(255, 237, 234, 234),
                items: [
                  BottomNavigationBarItem(
                    icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                    child: Icon(Icons.home, 
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 30,),
                    ),
                    label: '',
                    ),
      
                  BottomNavigationBarItem(
                    icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                    child: Icon(Icons.calendar_today_outlined, 
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 30,),
                    ),
                    label: '',
                    ),
      
                  BottomNavigationBarItem(
                    icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                    child: Icon(Icons.notifications_none_outlined, 
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 30,),
                    ),
                    label: '',
                    ),
      
                  BottomNavigationBarItem(
                    icon: Padding(padding: EdgeInsets.fromLTRB(0, 10.h, 0, 0),
                    child: Icon(Icons.grid_view_outlined, 
                    color: Color.fromARGB(255, 68, 68, 68),
                    size: 30,),
                    ),
                    label: '',
                    ),
                ], 
                type: BottomNavigationBarType.fixed,
                ),
            floatingActionButton: 
              FloatingActionButton(
                onPressed: () => Provider.of<ToDoListProvider>(context, listen: false).addItem(context),
                child: Icon(Icons.add, color: Colors.white, size: 40,),
                backgroundColor: Color.fromARGB(255, 223, 189, 67),
                elevation: 0,
      
                ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
            
          ),
        ),
        designSize: const Size(428, 926),
      ),
    );
    
  }
}
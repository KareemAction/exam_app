
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop_app/Auth/login_screen.dart';
import 'package:shop_app/Home/home_page_screen.dart';



 void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
 }


 class MyApp extends StatefulWidget {
  // app
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


 // awl haga bt4t8l fi el sf7a

  @override
  void initState() {

 // check if user login or not
    FirebaseAuth.instance
  .authStateChanges()
  .listen((User? user) {
    if (user == null) {
      print('======================== User is currently signed out!');
    } else {
      print('======================== User is signed in!');
    }
  });
    super.initState();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[50],
          titleTextStyle: TextStyle(color: Colors.amber, fontSize: 17, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(
            color: Colors.amber,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: (FirebaseAuth.instance.currentUser != null &&
       FirebaseAuth.instance.currentUser!.emailVerified) 
       ?  //CoffeeShop()

    Homepage()
    // CoffeUiShop()
    // CarsUiShop()
       //CoffeeShop()
       : Login(),

      routes: {
       // "signup" :(context) => SignUp (),
      "login" :(context) => Login (),
      "homepage" :(context) => Homepage (),
    //  "services" :(context) => Services (),
    //  "new_task_ui" :(context) => CoffeeShop (),
   //   "coffeShop" :(context) => CoffeeShop (),
     },
    );
    // GetMaterialApp(
    //   theme: ThemeData(
    //     appBarTheme: AppBarTheme(
    //       backgroundColor: Colors.grey[50],
    //       titleTextStyle: TextStyle(color: Colors.amber, fontSize: 17, fontWeight: FontWeight.bold),
    //       iconTheme: IconThemeData(
    //         color: Colors.amber,
    //       ),
    //     ),
    //   ),
      
      //  (FirebaseAuth.instance.currentUser != null &&
      //  FirebaseAuth.instance.currentUser!.emailVerified) 
      //  ?  
       
      
     
    
   
  }
}
// }




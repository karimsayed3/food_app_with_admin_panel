import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:food/auth/sign_in.dart';
import 'package:food/providers/product_provider.dart';
import 'package:food/providers/review_cart_provider.dart';
import 'package:food/providers/user_provider.dart';
import 'package:food/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvier>
          (create: (context) => ProductProvier()),
        ChangeNotifierProvider<UserProvider>
          (create: (context) => UserProvider()),
        ChangeNotifierProvider<ReviewCartProvider>
          (create: (context) => ReviewCartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignIn(),
      ),
    );
  }
}
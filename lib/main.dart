import 'package:bookshop/constant/colors.dart';
import 'package:bookshop/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const BookShop());
}

// logosiz versiya

class BookShop extends StatelessWidget {
  const BookShop({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Book shop',
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
       
        primaryColor: TColor.primary,
        textTheme: GoogleFonts.catamaranTextTheme(),
      
      ),
      onGenerateRoute: AppRoute.router,
    );
  }
}







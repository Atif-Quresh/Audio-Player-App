import 'package:flutter/material.dart';

import 'bottom_navbar.dart';

class FavourateAudio extends StatelessWidget {
  const FavourateAudio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Here Your favourate song displayed")),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
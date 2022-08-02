import 'package:audio_player_flutter/color.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: BottomAppBar(
        shape: AutomaticNotchedShape(
RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25),
 ),),
        ),
        
        color:
            MyColor.SecondaryColor,
            elevation: 0, //Color.fromARGB(255, 7, 36, 105),
        // shape: CircularNotchedRectangle(),
        // notchMargin: 8.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.play_arrow_outlined,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                  onPressed: () {
                    //Navigator.of(context).pushReplacementNamed("/");
                  },
                ),
              ),
              Container(
                child: IconButton(
                    icon: Icon(Icons.favorite_border_outlined,
                        color: Color.fromARGB(255, 0, 0, 0)),
                    onPressed: () {
                      //logout(context);
                      //Navigator.of(context).pushReplacementNamed("/favourate");
                    }),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.share_outlined,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  onPressed: () {},
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.settings_outlined,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  
  }
}

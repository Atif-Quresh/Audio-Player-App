import 'package:audio_player_flutter/color.dart';
import 'package:flutter/material.dart';

class Playlist extends StatelessWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: constraints.maxHeight,
        width: double.infinity,
      //color: Colors.red,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ////////////   Playlist Label Container Or firts column Item ////////////
          Container(
            height: (constraints.maxHeight*0.17) - 8, // subtract main container margin
            //color: Color.fromARGB(255, 98, 244, 54),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.queue_music_outlined,
                  color: MyColor.SecondaryTextColor,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  "Playlist",
                  style: TextStyle(
                      color: MyColor.SecondaryTextColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                FittedBox(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      //backgroundColor: Colors.blue,
                      ),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: MyColor.SecondaryTextColor,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: constraints.maxHeight*0.02,),
          //////////////   Playlist Cards label Or Second Column Item ///////// 
          Container(
            height: constraints.maxHeight*0.73,
            //color: Color.fromARGB(255, 54, 244, 235),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: FittedBox(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(
                      7,
                      (index) => Container(
                        //color: Colors.purple,
                            padding: EdgeInsets.all(4),
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              child: Column(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)),
                                    elevation: 5,
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          "assets/images/pic-5.png",
                                          height: 100,
                                          width: 70,
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        top: 4, left: 4, right: 4, bottom: 0),
                                    width: 70,
                                    child: Text(
                                      "Music",
                                      style: TextStyle(
                                          color: MyColor.SecondaryTextColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 4),
                                    width: 70,
                                    child: Text(
                                      "Artist",
                                      style: TextStyle(
                                          fontSize: 10,
                                          color:
                                              MyColor.SecondaryTextColor),
                                    ),
                                  )
                                ],
                              ),
                              onTap: () {},
                            ),
                          )),
                ),
              ),
            ),
          )
        ],
      ),
    );
    });
  }
}

import 'package:audio_player_flutter/color.dart';
import 'package:flutter/material.dart';

class AllSong extends StatelessWidget {
  const AllSong({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (cntx, constraints) {
      print("check height ${constraints.maxHeight * 0.22}");
      return Container(
        //color: Colors.red,
        margin: EdgeInsets.all(4),
        //height: constraints.maxHeight*0.20,
        // width: constraints.maxWidth* 0.33,
        padding: EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              //color: Color.fromARGB(255, 100, 202, 69),
              height: constraints.maxHeight*0.15,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.playlist_play_outlined, color: Color.fromARGB(255, 176, 230, 255),),
                  SizedBox(width: 3,),
                  Text(
                    "All Songs",
                    style: TextStyle(
                        color: Color.fromARGB(255, 176, 230, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                  style: TextButton.styleFrom(
                    //backgroundColor: Color.fromARGB(255, 255, 177, 60),
                    ),
                  child: FittedBox(
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: MyColor.PrimaryTextColor,
                      ),
                    ),
                  ),
                  onPressed: () {},
                ),
                ],
              ),
            ),
            SizedBox(height: constraints.maxHeight*0.02,),
            Container(
              //color: Colors.blue,
              height: (constraints.maxHeight*0.80)-4,
              //height: MediaQuery.of(context).size.height*0.42,
              //color: Colors.red,
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                    9,
                    (index) => Column(
                          children: [
                            InkWell(
                              child: Card(
                                margin: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 8),
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 0,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor:
                                        Color.fromRGBO(105, 119, 250, 1),
                                    radius: 14,
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: FittedBox(
                                          child: Icon(
                                        Icons.music_note,
                                        color: Colors.white,
                                      )),
                                    ),
                                  ),
                                  title: Text(
                                    "My song ${index + 1}",
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: MyColor.PrimaryTextColor),
                                  ),
                                  subtitle: Text(
                                    "Artist",
                                    style: const TextStyle(
                                        fontSize: 12, color: Colors.grey),
                                  ),
                                  trailing: IconButton(
                                    icon: Icon(
                                      Icons.more_vert,
                                      color: Color.fromRGBO(210, 210, 210, 1),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed("/detail_audio");
                              },
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 2,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ],
                        )),
              )),
            ),
          ],
        )
        );
    });
  
  }
}

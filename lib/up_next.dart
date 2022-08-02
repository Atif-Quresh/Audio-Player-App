import 'package:flutter/material.dart';

class UpNext_play extends StatelessWidget {
  const UpNext_play({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(
              Icons.music_note_outlined,
              color: Color.fromARGB(255, 176, 230, 255),
            ),
            SizedBox(
              width: 4,
            ),
            Text(
              "UP NEXT",
              style: TextStyle(
                  color: Color.fromARGB(255, 176, 230, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Spacer(),
            TextButton(
              child: Text(
                "See All",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.of(context).popAndPushNamed("/");
              },
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
            padding: EdgeInsets.only(left: 8),
            height: MediaQuery.of(context).size.height * 0.30,
            width: double.infinity,
            child: SingleChildScrollView(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                  5,
                  (index) => Card(
                        margin:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        color: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 0,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color.fromRGBO(105, 119, 250, 1),
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
                            "Next song ${index + 1}",
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
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
                            onPressed: () {
                              Navigator.of(context).pushReplacementNamed("/");
                            },
                          ),
                        ),
                      )),
            )))
      ],
    ));
  }
}

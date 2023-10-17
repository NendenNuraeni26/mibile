import 'package:flutter/material.dart';

//Nanti ketik stl langsung tab, nanti dibuatkan formnya otomatis
class Profile_view extends StatelessWidget {
  const Profile_view({super.key});

  @override
  Widget build(BuildContext context) {
    ///tempet awal itu di scaffod jadi nanti ada navbar text drawer efbar dsb
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),

        ///ini kaya web gitu low
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 100, left: 100),

              ///ini buat image biar terlihat bulat
              child: CircleAvatar(
                radius: 80,
                child: ClipOval(
                  child: Image.network(
                    'https://www.goodnewsfromindonesia.id/uploads/images/2023/05/2609372023-mgid_arc_imageassetref_shared.nick.jpg',
                  ),
                ),
              ),
            ),

            /// ini image biasa
            // Image.network(
            //     "https://www.goodnewsfromindonesia.id/uploads/images/2023/05/2609372023-mgid_arc_imageassetref_shared.nick.jpg"),

            ///ini membuat kontainer
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite),
                    Icon(Icons.linked_camera),
                    Icon(Icons.message),
                  ]),
            ),
            Container(
              width: 320,
              height: 200,
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(0, 30, 0, 0),

              ///cild itu cuma 1 anak, children itu banyak anak
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Name :    Nenden Nuraeni',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  Text(
                    'Nim  :   210605110149',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: 320,
              height: 200,
              color: Colors.blue,
            )
          ],
        ));
  }
}

// //ini kaya web gitu low
//       body: Container(
//         color: Colors.red,
//         padding: EdgeInsets.all(12),
//         margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
//         child: Text(
//           'Ini Text Nenden ',
//           style: TextStyle(color: Colors.black, fontSize: 24),
//         ),
//       ),
//     );

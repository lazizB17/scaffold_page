import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LessonTen extends StatefulWidget {
  static const id = "lesson_ten";

  const LessonTen({Key? key}) : super(key: key);

  @override
  State<LessonTen> createState() => _LessonTenState();
}

class _LessonTenState extends State<LessonTen> {
  bool openSheet = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerDragStartBehavior: DragStartBehavior.down,
      primary: true,
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              color: Colors.red,
            ),
            Container(
              height: 400,
              color: Colors.blue,
            ),
            Container(
              height: 400,
              color: Colors.yellow,
            ),
            Container(
              height: 400,
              color: Colors.grey,
            ),
          ],
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      // ),
      // persistentFooterButtons: [
      //   Container(
      //     height: 60,
      //     width: 100,
      //     color: Colors.amber,
      //   ),
      //   Container(
      //     height: 60,
      //     width: 100,
      //     color: Colors.blueAccent,
      //   ),
      //   Container(
      //     height: 60,
      //     width: 100,
      //     color: Colors.amber,
      //   ),
      //   Container(
      //     height: 60,
      //     width: 100,
      //     color: Colors.blueAccent,
      //   ),
      // ],

      // #variant handle

      // #endDrawer
      endDrawer: Drawer(
        child: Column(
          children: [
            // #header
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blueGrey),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // #avatarka
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: Image.asset(
                        "assets/images/avatar_1.png",
                        height: 70,
                        width: 75,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                    width: double.infinity,
                  ),

                  // #fullname
                  const Text(
                    "Abdulaziz Bo'riyev",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold),
                  ),

                  // #email
                  const Text(
                    "abdulazizboriyev993@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),

            // #body
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.folder,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "My Files",
                    style: TextStyle(fontSize: 17.5),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.folder,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "My Files",
                    style: TextStyle(fontSize: 17.5),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.folder,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "My Files",
                    style: TextStyle(fontSize: 17.5),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              height: 50,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.folder,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "My Files",
                    style: TextStyle(fontSize: 17.5),
                  )
                ],
              ),
            ),
          ],
        ),
      ),

      onDrawerChanged: (value) {
        print("object: $value");
      },

      // #floatingAcrtionButton
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            openSheet = !openSheet;
          });
        },
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1485290334039-a3c69043e517?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8fHx8fHx8MTYyOTU3NDE0MQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=300'),
              ),
              accountEmail: Text('jane.doe@example.com'),
              accountName: Text(
                'Jane Doe',
                style: TextStyle(fontSize: 24.0),
              ),
              decoration: BoxDecoration(
                color: Colors.black87,
              ),
              // child: Text('Drawer Header'),
            ),
            ListTile(
              leading: const Icon(Icons.house),
              title: const Text(
                'Houses',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LessonTen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.apartment),
              title: const Text(
                'Apartments',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LessonTen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.house_outlined),
              title: const Text(
                'Townhomes',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const LessonTen(),
                  ),
                );
              },
            ),
            const Divider(
              height: 10,
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text(
                'Favorites',
                style: TextStyle(fontSize: 24.0),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),

      bottomSheet: BottomSheet(
        enableDrag: false,
        onClosing: () {
          setState(() {
            openSheet = ! openSheet;
          });
        },
        builder: (context) {
          return openSheet ? Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * .5,
          ) : SizedBox.shrink();
        },
      ),
    );
  }
}
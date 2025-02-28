import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.teal,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.camera_alt,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    "Chats",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "Status",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Tab(
                  child: Text(
                    "Calls",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            actions: [
              Icon(Icons.search, color: Colors.white),
              SizedBox(width: 5),
              PopupMenuButton(
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: '1',
                    child: Text("New Group"),
                  ),
                  PopupMenuItem(
                    value: '2',
                    child: Text("Settings"),
                  ),
                  PopupMenuItem(
                    value: '3',
                    child: Text("Logout"),
                  )
                ],
              ),
              SizedBox(width: 50),
            ],
          ),
          body: TabBarView(children: [
            Text("Camera"),
            ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Alex Benerson'),
                    subtitle: Text("Where are you?"),
                    trailing: Text('12:00 AM'),
                  );
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.green, width: 3)),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/1435612/pexels-photo-1435612.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          ),
                        ),
                        title: Text("Alex ben"),
                        subtitle: Text("30 mins ago"),
                      ),
                    ],
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/1040880/pexels-photo-1040880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text("Alex Ben"),
                    subtitle: Text(index % 2 == 0
                        ? "You missed a call"
                        : "you missed video call"),
                    trailing:
                        Icon(index % 2 == 0 ? Icons.phone : Icons.video_call),
                  );
                })
          ]),
        ));
  }
}

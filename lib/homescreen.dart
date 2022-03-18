import 'package:flutter/material.dart';
import 'package:fluttertest/colors.dart';
import 'package:fluttertest/contact_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            title: const Text(
              "Whatsapp",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w900),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.grey),
                onPressed: () {},
              ),
            ],
            bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w900,
              ),
              tabs: [
                Tab(
                  text: "CHATS",
                ),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ContactsList(),
              Center(
                  child: Text(
                'This is Status Tab',
                style: TextStyle(fontSize: 32),
              )),
              Center(
                  child: Text(
                'This is Call Tab',
                style: TextStyle(fontSize: 32),
              )),
            ],
          ),
        ));
  }
}

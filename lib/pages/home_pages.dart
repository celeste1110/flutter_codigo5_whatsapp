import 'package:flutter/material.dart';
import 'package:flutter_codigo5_whatsapp/pages/chat_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
 TabController? _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController=TabController(length: 4, vsync: this);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        //backgroundColor: Colors.teal,
        onPressed: (){},
        child: Icon(Icons.message),
      ),
      appBar: AppBar(
        title: Text('WhatsApp'),
        //backgroundColor: Colors.teal,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS',style: TextStyle(fontWeight: FontWeight.bold,), ),
            ),
            Tab(
              child: Text('STATUS',style: TextStyle(fontWeight: FontWeight.bold,), ),
            ),
            Tab(
              child: Text('CALLS',style: TextStyle(fontWeight: FontWeight.bold,), ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('Cámara')),
          ChatPage(),
          Center(child: Text('Status')),
          Center(child: Text('Calls')),


        ],
      ),

    );
  }
}

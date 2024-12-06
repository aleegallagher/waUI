import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatefulWidget {
  const WhatsAppHome({Key? key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> {
  final List<Chat> _chats = [
    Chat(
      nama: 'ale',
      pesan: 'Halo, apa kabar?',
      waktu: '10:00',
    ),
    Chat(
      nama: 'udin',
      pesan: 'apakah ini masi ada?.',
      waktu: '09:00',
    ),
    Chat(
      nama: 'sayang',
      pesan: 'mas, aku uda telat 2 bulann.',
      waktu: '08:30',
    ),
    Chat(
      nama: 'edo',
      pesan: 'turru.',
      waktu: '08:00',
    ),
    Chat(
      nama: 'adit',
      pesan: 'ga iso.',
      waktu: '07:00',
    ),
    Chat(
      nama: 'samid',
      pesan: 'sipp.',
      waktu: '06:00',
    ),
    Chat(
      nama: 'vito',
      pesan: 'kelass lee.',
      waktu: '05:00',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsApp'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _chats.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text(_chats[index].nama[0]),
            ),
            title: Text(_chats[index].nama),
            subtitle: Text(_chats[index].pesan),
            trailing: Text(_chats[index].waktu),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Kirim Pesan',
        child: const Icon(Icons.message),
      ),
    );
  }
}

class Chat {
  final String nama;
  final String pesan;
  final String waktu;

  Chat({required this.nama, required this.pesan, required this.waktu});
}

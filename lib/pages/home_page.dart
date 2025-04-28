import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> kosList = [];

  @override
  void initState() {
    super.initState();
    fetchDataKos();
  }

  Future<void> fetchDataKos() async {
    final response =
        await Supabase.instance.client.from('DataKos').select().execute();

    if (response.error == null && response.data != null) {
      print('Data fetched: ${response.data}');
      setState(() {
        kosList = List<Map<String, dynamic>>.from(response.data);
      });
    } else {
      // Handle error
      print('Error fetching data: ${response.error?.message}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Kos Anda')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: kosList.length, // contoh dummy 3 data
          itemBuilder: (context, index) {
            final kos = kosList[index];
            return Card(
              child: ListTile(
                leading: Container(
                  width: 50,
                  height: 50,
                  color: Colors.grey.shade300,
                ),
                title: const Text('Kos Contoh'),
                subtitle: const Text('Alamat Kos - 8 kamar tersedia'),
                trailing: const Icon(Icons.chevron_right),
                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
              ),
            );
          }),
    );
  }
}

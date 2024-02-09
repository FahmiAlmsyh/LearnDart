import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Menu Main",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/ind');
                },
                child: const Text("Increment dan Decrement")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sec');
                },
                child: const Text("Press Button")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/mwd',
                      arguments: "Halo ini dari halaman utama");
                },
                child: const Text("Move with Data")),
            ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.pushNamed(
                    context,
                    '/rds',
                  );
                  final message = result != null ? result : "Data Kosong";

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(message.toString()),
                  ));
                },
                child: const Text("Move with Data")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/rp');
                },
                child: Text("Replace Page"))
          ],
        ),
      ),
    );
  }
}

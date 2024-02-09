import 'package:flutter/material.dart';

class ReturnDataScreen extends StatelessWidget {
  final _dataname = TextEditingController();
  final _dataumur = TextEditingController();
  final _dataalamat = TextEditingController();
  ReturnDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Return Data Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _dataname,
              decoration: InputDecoration(labelText: "masukkan nama anda"),
            ),
            // Umur
            TextField(
              controller: _dataumur,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "masukkan umur ente"),
            ),
            // Alamat
            TextField(
              controller: _dataalamat,
              decoration:
                  const InputDecoration(labelText: "masukkan alamat anda"),
            ),
            ElevatedButton(
                onPressed: () {
                  String nama = _dataname.text;
                  String alamat = _dataalamat.text;
                  String umur = _dataumur.text;
                  if (nama.isEmpty && alamat.isEmpty && umur.isEmpty) {
                    Navigator.pop(context, null);
                  } else {
                    Navigator.pop(context,
                        "Hai nama saya $nama, saya berumur $umur, dan saya tinggal di $alamat");
                  }
                },
                child: Text("Simpan")),
          ],
        ),
      ),
    );
  }
}

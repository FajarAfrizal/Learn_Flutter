import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:formlogin/main.dart';

import 'multiple_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.email});
  
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Selamat datang : " + email),
            Text("Berhasil Login"),
            ElevatedButton( // tambahkan widget ini 
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MultipleWidget()
                    )
                  );
                },
                child: Text("Cek Multiple Widget")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => MyHomePage()));
                },
                child: Text("Kembali")),
            Text("Berhasil Login"),
          ],
        ),
      ),
    );
  }
}
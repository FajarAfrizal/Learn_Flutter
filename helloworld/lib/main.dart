import 'package:flutter/material.dart'; //perintah untuk mengimport library material dart bawaan dari flutter
void main() { //fungsi main adalah fungsi yang pertama kali dijalankan oleh Flutter
  runApp(helloWorld()); 
}
 
class helloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Theme.of(context).colorScheme.onPrimary,
    );
    return MaterialApp(
      title: 'Belajar Flutter', //perintah untuk memberikan judul pada aplikasi kalian
      home:Scaffold( //Tempat untuk meletakkan kumpulan widget kalian
        appBar: AppBar(
          title: Text('Belajar Flutter'),
          actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Action 1'),
          ),
          TextButton(
            style: style,
            onPressed: () {},
            child: const Text('Action 2'),
          ),
        ],

         ),  
      ),
    ); 
  }
}

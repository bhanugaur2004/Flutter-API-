import 'package:flutter/material.dart';
import 'package:simplilearn/screens/second_screen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Ouotes App")),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () async {
            var url = Uri.parse('https://fakestoreapi.com/products/1');
            var response = await http.get(url);
            print('Response status: ${response.statusCode}');
            print('Response body: ${response.body}');
            var data = jsonDecode(response.body);
            String description = data["description"];
            String rate = data["category"];
            // print(data["description"]);
            print(data["rating"]["rate"]);
            print(data["image"]);
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => SecondScreen(descriptionText: description, rateText: rate,)));
          },
          child: Text("Go to next Screen"),
        )),
      ),
    );
  }
}

// class Title extends StatefulWidget {
//   const Title({super.key});
//
//   @override
//   State<Title> createState() => _TitleState();
// }

// class _TitleState extends State<Title> {
//   String title = "Bhanu";
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Text("data"),
//           ElevatedButton(onPressed: () {
//             setState(() {
//               title = "Gaur";
//             });
//           }, child: Text("Change Title")),
//
//         ],
//       ),
//     );
//   }
// }


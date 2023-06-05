import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/widgets/contact_list.dart';
import 'package:whatsapp_clone_app/widgets/web_profile_bar.dart';


class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebProfileBar(),
              // Web Search Bar,
               ContactList()
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width*0.7,
            decoration:const  BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/whatsappwebbackgroundImage.png'),),
            ),
            child: Center(child: Text('This is the chat'),),
          )
         
        ],
      ),
    );
  }
}
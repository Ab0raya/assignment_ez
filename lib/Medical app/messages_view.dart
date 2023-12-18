import 'package:assignments/Medical%20app/chat_view.dart';
import 'package:assignments/Medical%20app/widgets.dart';
import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "Messages",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
              color: Colors.black,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              //p horz h*0.02 ,,,    m ver h*0.02 hor h*0.01 h-> h *0.065 d-> inf
              CustomContainer(
                  lMargin: 10, tMargin: 20, rMargin: 10, bMargin:20,
                  lPadding: 10, tPadding:15, rPadding: 10, bPadding:15,
                  width: double.infinity, height:70,
                  color: Colors.black.withOpacity(0.2),
                  child: Center(
                    child: TextField(
                      cursorColor: const Color(0xff7165d3),
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          size: 45,
                          color: Colors.black.withOpacity(0.4),
                        ),
                        labelText: "Search",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 22,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Active now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListView.builder(
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return chatCircle(picture: index+1);
                        })),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Recent messages",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 650,
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                        itemCount: 7,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: InkWell(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const ChatView()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const CircleAvatar(
                                    backgroundImage: AssetImage('assets/images2/doctor1.jpg'),
                                    radius: 40,
                                  ),
                                  const SizedBox(width: 15,),
                                  Column(
                                    children: [
                                      const Text(
                                        "Dr . Mohamed Ali Clay",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        "Hello doctor are you here ?",
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(
                                    "12:30",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black.withOpacity(0.5),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        })),
              ),
            ],
          ),
        ),
    );
  }

  Stack chatCircle({required int picture}) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images2/doctor${picture>4? 1 : picture}.jpg"),
            radius: 40,
          ),
        ),
        const CircleAvatar(
          backgroundColor: Color(0xff60aa69),
          radius: 10,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              color: const Color(0xff7165d3),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 27,
                    backgroundImage: AssetImage('assets/images2/doctor1.jpg'),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Dr . Mohamed Ali Clay",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.phone,
                    color: Colors.white,
                    size: 30,
                  ),
                  const Icon(
                    Icons.video_call,
                    color: Colors.white,
                    size: 30,
                  ),
                  const Icon(
                    Icons.more_vert_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemBuilder: (context,index){
                    return  Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(8),
                              height: 70,
                              width: 300,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.2),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                              ),
                              child: const Text("Hefkek elflfldf dflmsldmflsmdfl sdlfmsdfls" , style: TextStyle(fontSize: 20),),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(10),
                              height: 70,
                              width: 300,
                              decoration: const BoxDecoration(
                                color: Color(0xff7165d3),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  bottomLeft: Radius.circular(16),
                                  topLeft: Radius.circular(16),
                                ),
                              ),
                              child: const Text("Hefkek elflfldf dflmsldmflsmdfl sdlfmsdfls" , style: TextStyle(fontSize: 20),),
                            ),
                          ],
                        ),
                      ],
                    );
                  }
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 0),
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ]
              ),
              child:  Row(
                children: [
                  const Icon(Icons.add,color: Colors.black,size: 40,),
                  const Icon(Icons.face,color: Colors.yellow,size: 40,),
                  Text("    Type something" , style: TextStyle(fontSize: 20,color: Colors.black.withOpacity(0.4)),),
                  const Spacer(),
                  const Icon(Icons.send,color: Color(0xff7165d3),size: 40,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

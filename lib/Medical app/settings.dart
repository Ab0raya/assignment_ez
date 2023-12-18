import 'package:assignments/Medical%20app/widgets.dart';
import 'package:flutter/material.dart';
class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    List settingsItems = [
      [const Color(0xffbfe0fd),"Profile", Icon(Icons.person_outline_rounded,size: 55,color:Colors.black.withOpacity(0.2),)],
      [Colors.purple.withOpacity(0.4),"Notifications", const Icon(Icons.notifications_none,size: 55,color:Colors.purple,)],
      [const Color(0xffbfe0fd),"Privacy", Icon(Icons.shield,size: 45,color:Colors.black.withOpacity(0.2),)],
      [Colors.greenAccent,"General", const Icon(Icons.settings_suggest_outlined,size: 45,color:Colors.green,)],
      [Colors.yellowAccent.withOpacity(0.3),"About us", const Icon(Icons.info_outline,size: 45,color:Colors.yellow,)],
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              children: [
                const CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage('assets/images2/doctor1.jpg'),
                ),
                const SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    themText(isBold: false, text: 'Dr. Ahmed Sayed ali', size: 25, color: Colors.black),
                    themText(isBold: false, text: 'Profile', size: 15, color: Colors.grey),
                  ],
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: Divider(
                thickness: 2,
              ),
            ),
             Expanded(
               child: ListView.builder(
                    itemCount: settingsItems.length,
                   itemBuilder: (context,index){
                     return Padding(
                       padding: const EdgeInsets.symmetric(vertical: 10.0),
                       child: Row(
                         children: [
                            CircleAvatar(
                             backgroundColor: settingsItems[index][0],
                             radius: 35,
                             child: settingsItems[index][2],
                           ),
                           const SizedBox(width: 10,),
                           themText(isBold: true, text: settingsItems[index][1], size: 25, color: Colors.black),
                           const Spacer(),
                           const Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 30,)
                         ],
                       ),
                     );
                   }
               ),
             ),
          ],
        ),
      ),
    );
  }
}

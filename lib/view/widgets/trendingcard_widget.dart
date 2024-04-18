import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 20,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return Stack(children: [
          Container(
            width: 370,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage(
                                "assets/images/lovepik-a-black-leaf-png-image_401568860_wh1200.png",
                              )),
                              borderRadius: BorderRadius.circular(30),
                              border:
                                  Border.all(color: Colors.black, width: 2))),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Author",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("1,028 Meetups")
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 70, left: 200),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            backgroundColor:
                                const Color.fromARGB(255, 15, 85, 143),
                            minimumSize: Size(140, 40)),
                        onPressed: () {},
                        child: const Text(
                          'See more',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  )
                ],
              ),
            ),
          ),
          const Positioned(
              top: 90,
              left: 20,
              child: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(
                      'https://img.pikbest.com/origin/09/28/50/096pIkbEsTsPx.jpg!w700wp'))),
          const Positioned(
            top: 90,
            left: 60,
            child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    'https://img.lovepik.com/free-png/20220127/lovepik-business-team-discussing-work-in-office-png-image_401889976_wh1200.png')),
          ),
          const Positioned(
              top: 90,
              left: 110,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    "https://ouch-cdn2.icons8.com/jHqd26mPjPfLjckhiAyq9KLw98UFGMmLp11QwBQuG8E/rs:fit:573:456/extend:false/wm:1:re:0:0:0.8/wmid:ouch/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMjE4/Lzk2YTg3NjExLWNl/MTItNGI1Zi1hMWRi/LWQ3OGJjZTFkMWMw/YS5wbmc.png"),
              )),
          const Positioned(
              top: 90,
              left: 160,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    "https://e0.pxfuel.com/wallpapers/363/578/desktop-wallpaper-business-man-working-and-writing-in-laptop-office-desk-background-png.jpg"),
              )),
          const Positioned(
              top: 90,
              left: 210,
              child: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/9d/d9/f3/9dd9f38afd850f9514d8664114448fab.jpg"),
              ))
        ]);
      },
    );
  }
}

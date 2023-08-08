import 'package:flutter/material.dart';

class InviteContaner extends StatefulWidget {
  const InviteContaner({super.key});

  @override
  State<InviteContaner> createState() => _InviteContanerState();
}

class _InviteContanerState extends State<InviteContaner> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
          radius: 20,
          child: Image(image: AssetImage('images/profile-user.png'))),
      title: const Text(
        'Invite Contatacts',
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        'Follow People you know',
        style:
            TextStyle(fontSize: 17, color: Color.fromARGB(255, 134, 133, 133)),
      ),
      trailing: MaterialButton(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0))),
        onPressed: () {},
        color: const Color(0xFFfe5c50),
        child: const Text(
          'Invite',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PersonsinfoInvite extends StatelessWidget {
  PersonsinfoInvite(
      {super.key,
      required this.name,
      required this.imageurl,
      required this.followby,
      required this.followeredname,
      required this.followoption});

  String imageurl;
  String name;
  String followby;
  String followeredname;
  String followoption;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 270,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 173, 172, 172),
            blurRadius: 2,
            offset: Offset(1, 1), // Shadow position
          ),
        ],
      ),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
            width: MediaQuery.of(context).size.width * 0.07,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.close),
            ],
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(imageurl),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 12),
          Column(
            children: [
              Text(
                followby,
                style: const TextStyle(
                    fontSize: 14, color: Color.fromARGB(255, 88, 84, 84)),
              ),
              Text(
                followeredname,
                style: const TextStyle(fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          SizedBox(
            width: 150,
            child: MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              onPressed: () {},
              minWidth: 30,
              color: const Color(0xFFfe5c50),
              child: Text(
                followoption,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class PeopleInvite extends StatelessWidget {
  PeopleInvite({super.key});
  List imgas = [
    'https://media.istockphoto.com/id/1278978817/photo/portrait-of-happy-mature-man-smiling.jpg?s=612x612&w=0&k=20&c=GPniKSszzPgprveN7sCT5mb-_L3-RSlGAOAsmoDaafw=',
    'https://media.istockphoto.com/id/1288538088/photo/portrait-young-confident-smart-asian-businessman-look-at-camera-and-smile.jpg?s=612x612&w=0&k=20&c=qkOwVHZFC-fbtbTnufVGaXFhnQBcfEjzbu5ThSXVLR0=',
    'https://media.istockphoto.com/id/1277996375/photo/happy-young-woman-studio-portrait.jpg?s=612x612&w=0&k=20&c=GrJyXLoamxUDaLxgvt9TJtoM5BdHu6u99VCGM_w-2o4=',
    'https://media.istockphoto.com/id/603281834/photo/success-gave-me-this-smile.jpg?s=612x612&w=0&k=20&c=O6uNp5lTLtzO2SKRjcsk350kXL8cJrzAmenBgmUd7ac=',
    'https://media.istockphoto.com/id/1157741177/photo/portrait-of-a-young-adult-asian-woman-in-venice.jpg?s=612x612&w=0&k=20&c=VWgnBIQMyNPF1a7mh3CFci7g_97MfoFy5jHvvElhVH8=',
    'https://media.istockphoto.com/id/1142192548/vector/man-avatar-profile-male-face-silhouette-or-icon-isolated-on-white-background-vector.jpg?s=612x612&w=0&k=20&c=DUKuRxK9OINHXt3_4m-GxraeoDDlhNuCbA9hp6FotFE='
  ];
  List names = [
    'Cooper Berithaupt',
    'Natalie Hagrid',
    'Ben Karpas',
    'Johnny Boy',
    'Eggs inabasket',
    'Mrs. Ladle Lady'
  ];
  List followby = [
    'Followed by',
    'Followed by',
    '',
    'Followed by',
    'Followed by',
    'Followed by'
  ];
  List followeredname = [
    'Jake + 18 more',
    'BBQEXPERT',
    '',
    'LindaysLunch',
    'CoryInTheHouse',
    ' KatesKitchen + 9 more'
  ];
  List followoption = [
    'Follow',
    'Follow Back',
    'Follow Back',
    'Follow',
    'Follow',
    'Follow'
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 5,
          childAspectRatio: 1 / 1.5,
        ),
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: PersonsinfoInvite(
              followby: followby[index],
              followeredname: followeredname[index],
              followoption: followoption[index],
              imageurl: imgas[index],
              name: names[index],
            ),
          );
        },
      ),
    );
  }
}

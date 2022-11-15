import 'package:flutter/material.dart';
import 'package:gtu_material/pages/sem_pages/sem1.dart';
import 'package:gtu_material/pages/sem_pages/sem4.dart';
import 'package:gtu_material/pages/sem_pages/sem5.dart';
import 'package:gtu_material/pages/sem_pages/sem6.dart';
import 'package:gtu_material/pages/sem_pages/sem7.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:gtu_material/pages/sem_pages/sem3.dart';

class HomeNumberDetails extends StatefulWidget {
  const HomeNumberDetails({super.key});

  @override
  State<HomeNumberDetails> createState() => _HomeNumberDetailsState();
}

class _HomeNumberDetailsState extends State<HomeNumberDetails> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/semIcon/sem1.png"),
              title: "Sem - 1 & 2".text.bold.make(),
              subtitle: "Computer Engineering".text.caption(context).make(),
              trailing: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[400])),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sem1Page()));
                }),
                child: const Text("View"),
              ),
            ).py12(),
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: Image.asset("assets/semIcon/sem3.png"),
              title: "Sem - 3".text.bold.make(),
              subtitle: "Computer Engineering".text.caption(context).make(),
              trailing: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[400])),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sem3Page()));
                }),
                child: const Text("View"),
              ),
            ).py12(),
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: Image.asset("assets/semIcon/sem4.png"),
              title: "Sem - 4".text.bold.make(),
              subtitle: "Computer Engineering".text.caption(context).make(),
              trailing: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[400])),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sem4Page()));
                }),
                child: const Text("View"),
              ),
            ).py12(),
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: Image.asset("assets/semIcon/sem5.png"),
              title: "Sem - 5".text.bold.make(),
              subtitle: "Computer Engineering".text.caption(context).make(),
              trailing: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[400])),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sem5Page()));
                }),
                child: const Text("View"),
              ),
            ).py12(),
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: Image.asset("assets/semIcon/sem6.png"),
              title: "Sem - 6".text.bold.make(),
              subtitle: "Computer Engineering".text.caption(context).make(),
              trailing: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[400])),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sem6Page()));
                }),
                child: const Text("View"),
              ),
            ).py12(),
            const Divider(
              height: 10,
            ),
            ListTile(
              leading: Image.asset("assets/semIcon/sem7.png"),
              title: "Sem - 7".text.bold.make(),
              subtitle: "Computer Engineering".text.caption(context).make(),
              trailing: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red[400])),
                onPressed: (() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => sem7Page()));
                }),
                child: const Text("View"),
              ),
            ).py12(),
          ],
        ),
      ),
    ).make().py16();
  }
}

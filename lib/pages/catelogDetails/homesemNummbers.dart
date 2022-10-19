import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:gtu_material/pages/sem_pages/sem3.dart';
import '../../routes/routes.dart';

class HomeSemDetails extends StatelessWidget {
  const HomeSemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/semIcon/sem3.jfif"),
            title: "Sem - 1 & 2".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(sem3Page.darkBluisColor)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.sem1route);
              },
              child: const Text("View"),
            ),
          ).py12(),
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: Image.asset("assets/semIcon/sem3.jfif"),
            title: "Sem - 3".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(sem3Page.darkBluisColor)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.sem3route);
              },
              child: const Text("View"),
            ),
          ).py12(),
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: Image.asset("assets/semIcon/sem3.jfif"),
            title: "Sem - 4".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(sem3Page.darkBluisColor)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.sem4route);
              },
              child: const Text("View"),
            ),
          ).py12(),
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: Image.asset("assets/semIcon/sem3.jfif"),
            title: "Sem - 5".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(sem3Page.darkBluisColor)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.sem5route);
              },
              child: const Text("View"),
            ),
          ).py12(),
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: Image.asset("assets/semIcon/sem3.jfif"),
            title: "Sem - 6".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(sem3Page.darkBluisColor)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.sem6route);
              },
              child: const Text("View"),
            ),
          ).py12(),
          const Divider(
            height: 10,
          ),
          ListTile(
            leading: Image.asset("assets/semIcon/sem3.jfif"),
            title: "Sem - 7".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(sem3Page.darkBluisColor)),
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.sem7route);
              },
              child: const Text("View"),
            ),
          ).py12(),
        ],
      ),
    ).make().py16();
  }
}

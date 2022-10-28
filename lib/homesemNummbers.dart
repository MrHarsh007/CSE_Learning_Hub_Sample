import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:gtu_material/pages/sem_pages/sem3.dart';
import 'routes/routes.dart';

class HomeNumberDetails extends StatelessWidget {
  const HomeNumberDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Column(
        children: [
          ListTile(
            leading: Image.asset("assets/semIcon/sem1.png"),
            title: "Sem - 1 & 2".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400])),
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
            leading: Image.asset("assets/semIcon/sem3.png"),
            title: "Sem - 3".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400])),
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
            leading: Image.asset("assets/semIcon/sem4.png"),
            title: "Sem - 4".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400])),
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
            leading: Image.asset("assets/semIcon/sem5.png"),
            title: "Sem - 5".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400])),
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
            leading: Image.asset("assets/semIcon/sem6.png"),
            title: "Sem - 6".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400])),
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
            leading: Image.asset("assets/semIcon/sem7.png"),
            title: "Sem - 7".text.bold.make(),
            subtitle: "Computer Engineering".text.caption(context).make(),
            trailing: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red[400])),
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

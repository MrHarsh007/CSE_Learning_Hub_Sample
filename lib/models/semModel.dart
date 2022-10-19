class semModel {
  static final semIteams = [
    //When you have to show only 1 data model...!!!
    {
      id: 01,
      name: "Harsh",
      desc: "HarshPorwal",
    },
    {
      id: 02,
      name: "PK",
      desc: "PK Acharya",
    },
  ];

  static get id => semIteams.length;

  static get name => semIteams.length;

  static get desc => semIteams.length;
}

// class semIteam {
//   final int id;
//   final String name;
//   final String desc;

//   semIteam({
//     required this.id,
//     required this.name,
//     required this.desc,
//   });
// }

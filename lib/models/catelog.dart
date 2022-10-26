class CatelogModel {
  static List<catIteam> catiteams = [
    //When you have to show only 1 data model...!!!
    // catIteam(
    //     id: 01,
    //     name: "Harsh",
    //     desc: "HarshPorwal",
    //     price: 999,
    //     pdf: "#33505a",
    //     image: "https://dartpad.dev/dart-192.png")
  ];

  // Get iteam by ID
  catIteam getById(int id) =>
      catiteams.firstWhere((element) => element.id == id, orElse: null);

  // Get iteam by Position
  catIteam getByPosition(int pos) => catiteams[pos];
}

class catIteam {
  final int id;
  final String name;
  final String desc;
  final String syllabus;
  final String pdf;
  final String image;

  catIteam(
      {required this.id,
      required this.name,
      required this.desc,
      required this.syllabus,
      required this.pdf,
      required this.image});

  factory catIteam.fromMap(Map<String, dynamic> map) {
    return catIteam(
        id: map["id"],
        name: map["name"],
        desc: map["desc"],
        syllabus: map["syllabus"],
        pdf: map["pdf"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "syllabus": syllabus,
        "pdf": pdf,
        "image": image,
      };
}

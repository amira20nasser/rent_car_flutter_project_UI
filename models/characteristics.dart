class Caracteristics {
  final String title;
  final String subtitle;
  final String image;

  Caracteristics(
      {required this.title, required this.subtitle, required this.image});
}

List<Caracteristics> caracteristics = [
  Caracteristics(
      title: "Capacity", subtitle: "4 seats", image: "assets/seats.png"),
  Caracteristics(
      title: "Max Speed", subtitle: "265 KM/h", image: "assets/motor.png"),
  Caracteristics(
      title: "Power", subtitle: "580 HP", image: "assets/engine.png"),
];

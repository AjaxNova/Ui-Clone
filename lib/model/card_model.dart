class CardModel {
  String title;
  String subtitle;
  String aed;
  CardModel({
    required this.title,
    required this.subtitle,
    this.aed = "1500",
  });
}

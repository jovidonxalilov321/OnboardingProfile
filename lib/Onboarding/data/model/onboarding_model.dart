class OnboardingModel {
  final int id;
  final String title;
  final String subtitle;
  final String picture;
  final int order;

  OnboardingModel(
      {required this.id,
      required this.title,
      required this.order,
      required this.picture,
      required this.subtitle,
      required rating});

  factory OnboardingModel.fromJson(Map<String, dynamic> json) {
    return OnboardingModel(
      id: json['id'],
      title: json['title'],
      order: json['order'],
      picture: json['picture'],
      subtitle: json['subtitle'],
      rating: json['rating'],
    );
  }
}

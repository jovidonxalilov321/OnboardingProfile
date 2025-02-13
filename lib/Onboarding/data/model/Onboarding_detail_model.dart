class OnboardingDetailModel {
  final int id;
  final int categoryId;
  final String title;
  final String description;
  final String photo;
  final int timeRequired;

  OnboardingDetailModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.photo,
    required this.timeRequired,
    required rating,
  });

  factory OnboardingDetailModel.fromJson(Map<String, dynamic> json) {
    return OnboardingDetailModel(
      id: json['id'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: json["description"],
      photo: json["photo"],
      timeRequired: json['timeRequired'],
      rating: json["rating"],
    );
  }
}
import 'package:uygavazifa301/Onboarding/data/model/onboarding_model.dart';

import '../../../core/client.dart';

class OnboardingRepository {
  OnboardingRepository({
    required this.client,
  });

  final ApiClient client;

  List<OnboardingModel>? myProfile;

  Future<List<OnboardingModel>?> fetchMyProfile() async {
    print("qandaydir");
    var rawProfile = await client.fetchMyProfile();
    print("raprofile $rawProfile");
    myProfile = rawProfile.map((e)=>OnboardingModel.fromJson(e)).toList();
    return myProfile;
  }
}

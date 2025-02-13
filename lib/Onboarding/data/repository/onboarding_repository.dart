import 'package:uygavazifa301/Onboarding/data/model/onboarding_model.dart';

import '../../../core/client.dart';
import '../model/Onboarding_detail_model.dart';

class OnboardingRepository {
  OnboardingRepository({
    required this.client,
  });

  final ApiClient client;

  List<OnboardingModel>? myProfile;
  List<OnboardingDetailModel>? myDetail;

  Future<List<OnboardingModel>?> fetchMyProfile() async {
    print("qandaydir");
    var rawProfile = await client.fetchMyProfile();
    print("raprofile $rawProfile");
    myProfile = rawProfile.map((e)=>OnboardingModel.fromJson(e)).toList();
    return myProfile;
  }
  Future<List<OnboardingDetailModel>?> fetchMyOnboarding() async {
    print("qandaydir");
    var rawProfile = await client.fetchMyOnboarding();
    print("raprofile $rawProfile");
    myDetail = rawProfile.map((e)=>OnboardingDetailModel.fromJson(e)).toList();
    return myDetail;
  }
}

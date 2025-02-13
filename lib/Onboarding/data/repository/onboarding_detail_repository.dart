import '../../../core/client.dart';
import '../model/Onboarding_detail_model.dart';

class OnboardingDetailRepository {
  OnboardingDetailRepository({
    required this.client,
  });

  final ApiClient client;


  List<OnboardingDetailModel>? myDetail;

  Future<List<OnboardingDetailModel>?> fetchMyOnboarding() async {
    print("qandaydir");
    var rawProfile = await client.fetchMyOnboarding();
    print("raprofile $rawProfile");
    myDetail = rawProfile.map((e)=>OnboardingDetailModel.fromJson(e)).toList();
    return myDetail;
  }
}
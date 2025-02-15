import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uygavazifa301/Onboarding/data/repository/onboarding_repository.dart';
import 'package:uygavazifa301/core/client.dart';
import 'package:uygavazifa301/utils.dart';

import 'Onboarding/data/repository/onboarding_detail_repository.dart';
import 'Onboarding/precentation/pages/Onboarding_detail_view.dart';
import 'main.dart';

void main() {
  runApp(OnboardingPicture());
}

class OnboardingPicture extends StatelessWidget {
  const OnboardingPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingDetail(
          vma: OnboardingDetailViewModel(
              repo: OnboardingDetailRepository(client: ApiClient()))),
    );
  }
}

class OnboardingDetail extends StatelessWidget {
  const OnboardingDetail({super.key, required this.vma});

  final OnboardingDetailViewModel vma;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vma,
      builder: (context, child) => Scaffold(
        backgroundColor: AppColors.bacround,
        appBar: AppBar(
          backgroundColor: AppColors.bacround,
          elevation: 0,
          toolbarHeight: 40,
          leading: Center(
            child: IconButton(
              icon: SvgPicture.asset(
                'asset/back.svg',
                width: 30,
                height: 20,
                fit: BoxFit.cover,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Onboarding()),
                );
              },

            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(
            20,
          ),
          child: ListView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.67),
                          child: Image.network(
                            vma.myDetail![6].photo,
                            width: 166,
                            height: 167,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.67),
                          child: Image.network(
                            vma.myDetail![1].photo,
                            width: 166,
                            height: 167,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.67),
                          child: Image.network(
                            vma.myDetail![2].photo,
                            width: 166,
                            height: 167,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.67),
                          child: Image.network(
                            vma.myDetail![3].photo,
                            width: 166,
                            height: 167,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.67),
                          child: Image.network(
                            vma.myDetail![4].photo,
                            width: 166,
                            height: 167,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 20),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.67),
                          child: Image.network(
                            vma.myDetail![5].photo,
                            width: 166,
                            height: 167,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 356,
                      height: 60,
                      decoration: BoxDecoration(
                        color: AppColors.bacround,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Find the best recipes that the world can provide you",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "also with every step that you can learn to increase,",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "your cooking skills.",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 207,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColors.redpink,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          "I'm New",
                          style: TextStyle(color: AppColors.pink, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 207,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColors.redpink,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          "I’ve been here",
                          style: TextStyle(color: AppColors.pink, fontSize: 15),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uygavazifa301/Onboarding/data/repository/onboarding_detail_repository.dart';
import 'package:uygavazifa301/Onboarding/precentation/pages/Onboarding_detail_view.dart';
import 'package:uygavazifa301/core/client.dart';
import 'package:uygavazifa301/recipe_button.dart';

import 'Onboarding/data/repository/onboarding_repository.dart';
import 'Onboarding/precentation/pages/onboarding_view.dart';

void main() {
  runApp(const Onboarding());
}

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingPage(
        vm: OnboardingViewModel(
          repo: OnboardingRepository(
            client: ApiClient(),
          ),
        ),
        vma: OnboardingDetailViewModel(
          repo: OnboardingDetailRepository(
            client: ApiClient(),
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.vm, required this.vma});

  final OnboardingViewModel vm;
  final OnboardingDetailViewModel vma;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: vm,
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          toolbarHeight: 70,
          leading: Center(
            child: SvgPicture.asset(
              'asset/back.svg',
              width: 30,
              height: 20,
              fit: BoxFit.cover,
            ),
          ),
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 64),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  vm.myProfile![0].title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  vm.myProfile![0].subtitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              itemCount: vm.myProfile!.length,
              itemBuilder: (context, index) => Image.network(
                vm.myProfile![index].picture,
                width: double.infinity,
                height: 741,
                fit: BoxFit.cover,
              ),
            ),
            // PageView.builder(
            //   itemCount: vm.myDetail!.length,
            //   itemBuilder: (context, index) => Image.network(
            //     vm.myDetail![index].photo,
            //     width: double.infinity,
            //     height: 741,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: 286,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.black, Colors.transparent],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 128,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              // child: Center(
              //   child: Image.network(vm.myDetail![1].photo),
              // ),
            ),
            Positioned(
              bottom: 48,
              child: RecipeButton(
                text: 'Continue',
                callback: () {},
                fontSize: 15,
                size: Size(207, 45),
                vma: vma,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

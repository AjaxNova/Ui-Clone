import 'package:flutter/material.dart';
import 'package:ui_clone/constants/constants.dart';
import 'package:ui_clone/widget/companies_card.dart';
import 'package:ui_clone/widget/explore_text.dart';
import 'package:ui_clone/widget/main_card.dart';
import 'package:ui_clone/widget/review_card.dart';
import 'package:ui_clone/widget/top_card.dart';

class TrainingTab extends StatelessWidget {
  const TrainingTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TopCard(
                      text: "Total Training attended",
                      count: "10",
                      cardColor: Color(0xFFd3d4ff),
                      badgeColor: Color(0xFFb5b9fe),
                    ),
                    TopCard(
                      count: "5",
                      text: "Upcoming Trainings",
                      badgeColor: Color(0xFFfeb3f7),
                      cardColor: Color(
                        (0xFFffd2ff),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const ExploreText(),
              const SizedBox(
                height: 5,
              ),
              const ListTile(
                title: Text(
                  "Featured Training",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 14,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                height: size.height / 2.2,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      final data = cardModels[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MainCard(
                          title: data.title,
                          subtitle: data.subtitle,
                        ),
                      );
                    }),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 18.0, right: 10, top: 4),
                child: SizedBox(
                  width: 400,
                  child: LinearProgressIndicator(
                    value: 0.3,
                    color: Colors.yellow,
                    minHeight: 6,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const ListTile(
                title: Text(
                  "Accreditation",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 120,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 7,
                      itemBuilder: (BuildContext context, int index) {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CompaniesCard(),
                        );
                      }),
                ),
              ),
              const ListTile(
                title: Text(
                  "See What Our Customers Say",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ReviewCard(),
                      );
                    }),
              ),
              const ListTile(
                title: Text(
                  "Our Clinets",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CompaniesCard(),
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ],
    );
  }
}

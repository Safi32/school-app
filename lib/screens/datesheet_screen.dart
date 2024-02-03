import 'package:flutter/material.dart';
import 'package:school_app/constraints.dart';
import 'package:school_app/data/datesheet_data.dart';

class DateSheet extends StatelessWidget {
  const DateSheet({super.key});

  static String routeName = "DateSheet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DateSheet"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(kDefaultPadding),
                  topLeft: Radius.circular(kDefaultPadding),
                ),
              ),
              child: ListView.builder(
                itemCount: datesheet.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(
                      left: kDefaultPadding / 2,
                      right: kDefaultPadding / 2,
                    ),
                    padding: const EdgeInsets.all(kDefaultPadding / 2 ),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: kDefaultPadding,
                          child: Divider(
                            thickness: 1.0,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  datesheet[index].date.toString(),
                                  style: const TextStyle(
                                    color: kTextBlackColor,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  datesheet[index].monthName,
                                  style: const TextStyle(
                                    color: kTextBlackColor,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  datesheet[index].subjectName,
                                  style: const TextStyle(
                                    color: kTextBlackColor,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  datesheet[index].dayName,
                                  style: const TextStyle(
                                    color: kTextBlackColor,
                                    fontWeight: FontWeight.w100,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                 " ${datesheet[index].time}",
                                  style: const TextStyle(
                                    color: kTextBlackColor,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                         const SizedBox(
                          height: kDefaultPadding ,
                          child: Divider(thickness: 1.0),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

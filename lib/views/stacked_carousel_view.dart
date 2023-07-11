import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

class StackedCarouselView extends StatefulWidget {
  const StackedCarouselView({super.key});

  @override
  State<StackedCarouselView> createState() => _StackedCarouselViewState();
}

class _StackedCarouselViewState extends State<StackedCarouselView> {
  List<Map<String, String>> techSkills = [
    {
      'skill': 'Data Science',
      'description':
          'Data Science involves extracting insights from large amounts of data using statistical analysis, machine learning, and other techniques.',
    },
    {
      'skill': 'Artificial Intelligence',
      'description':
          'Artificial Intelligence focuses on creating intelligent machines capable of performing tasks that typically require human intelligence.',
    },
    {
      'skill': 'Machine Learning',
      'description':
          'Machine Learning involves creating algorithms and models that enable computers to learn and make predictions or decisions without being explicitly programmed.',
    },
    {
      'skill': 'Cloud Computing',
      'description':
          'Cloud Computing refers to the delivery of computing services over the internet, enabling on-demand access to a shared pool of resources.',
    },
    {
      'skill': 'Cybersecurity',
      'description':
          'Cybersecurity focuses on protecting computer systems, networks, and data from unauthorized access, attacks, and vulnerabilities.',
    },
    {
      'skill': 'DevOps',
      'description':
          'DevOps combines software development and IT operations to improve collaboration, automation, and efficiency in software delivery and infrastructure management.',
    },
    {
      'skill': 'Internet of Things (IoT)',
      'description':
          'IoT involves connecting physical devices and objects to the internet, enabling them to collect and exchange data for various applications.',
    },
    {
      'skill': 'Big Data',
      'description':
          'Big Data refers to the large and complex datasets that require specialized techniques and technologies for storage, processing, and analysis.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "MBilalCodes",
                    maxLines: 4,
                    style: GoogleFonts.firaCode(
                      textStyle: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Here are some of the top tech skills to focus on",
                  maxLines: 4,
                  style: GoogleFonts.firaCode(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: SizedBox(
                  height: 500,
                  child: Swiper(
                    itemCount: techSkills.length,
                    itemWidth: 300,
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 100,
                                ),
                                Card(
                                  elevation: 10,
                                  child: SizedBox(
                                    height: 300,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            height: 100,
                                          ),
                                          Text(
                                            techSkills[index]["skill"]!,
                                            maxLines: 4,
                                            style: GoogleFonts.firaCode(
                                              textStyle: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            techSkills[index]["description"]!,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: GoogleFonts.firaCode(
                                              textStyle: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Card(
                              elevation: 5,
                              clipBehavior: Clip.antiAlias,
                              shape: const CircleBorder(),
                              child: SizedBox(
                                width: 200,
                                height: 200,
                                child: Image.network(
                                  "https://images.unsplash.com/photo-1660644808226-a5b2e691fc51?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE5fHxoYWNraW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    layout: SwiperLayout.STACK,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IOTApplications extends StatefulWidget {
  const IOTApplications({super.key});

  @override
  State<IOTApplications> createState() => _IOTApplicationsState();
}

class _IOTApplicationsState extends State<IOTApplications> {
  List<Map<String, String>> iotApplications = [
    {
      'name': 'Smart Home Automation',
      'description':
          'Automate and control home devices remotely. Manage lighting, thermostats, security systems, and appliances from anywhere.'
    },
    {
      'name': 'Industrial Automation',
      'description':
          'Monitor and optimize manufacturing processes. Utilize IoT to enhance operational efficiency, predictive maintenance, and real-time monitoring.'
    },
    {
      'name': 'Agriculture and Farming',
      'description':
          'Track and manage crops, livestock, and irrigation systems. Employ IoT sensors and data analysis for improved productivity and resource management.'
    },
    {
      'name': 'Healthcare and Wearable Devices',
      'description':
          'Monitor health parameters and enable remote patient monitoring. Utilize IoT devices and wearables for proactive healthcare and personalized wellness management.'
    },
    {
      'name': 'Smart Cities',
      'description':
          'Optimize urban living with intelligent transportation and resource management. Use IoT for smart parking, waste management, environmental monitoring, and energy efficiency.'
    },
    {
      'name': 'Supply Chain and Logistics',
      'description':
          'Track goods, optimize inventory, and streamline logistics operations. Leverage IoT for real-time asset tracking, inventory management, and efficient supply chain processes.'
    },
    {
      'name': 'Environmental Monitoring',
      'description':
          'Monitor air quality, water quality, and environmental conditions. Deploy IoT sensors to gather data for conservation efforts and sustainable resource management.'
    },
    {
      'name': 'Retail and Customer Experience',
      'description':
          'Enhance customer engagement and optimize store operations. Utilize IoT for personalized experiences, real-time inventory tracking, and smart checkout systems.'
    },
    {
      'name': 'Energy Management',
      'description':
          'Monitor energy usage and optimize energy distribution. Implement IoT-based smart grids, metering systems, and demand response mechanisms for efficient energy management.'
    },
    {
      'name': 'Transportation and Fleet Management',
      'description':
          'Track vehicles, optimize routes, and manage fleets efficiently. Utilize IoT for vehicle tracking, real-time monitoring, predictive maintenance, and fuel consumption optimization.'
    },
  ];
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "@Mbilalcodes",
                      style: GoogleFonts.aBeeZee(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Some Applications of IoT",
                  style: GoogleFonts.aBeeZee(
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Search",
                    contentPadding: const EdgeInsets.all(16),
                    fillColor: const Color.fromARGB(255, 228, 228, 228),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 3,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 3,
                        color: Colors.purple,
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {});
                  },
                  cursorWidth: 3,
                  cursorColor: Colors.purple,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: iotApplications.length,
                  itemBuilder: (context, index) {
                    return iotApplications[index]["name"]!
                                .trim()
                                .toLowerCase()
                                .contains(searchController.text
                                    .trim()
                                    .toLowerCase()) ||
                            searchController.text.isEmpty
                        ? Card(
                            margin: const EdgeInsets.all(8),
                            elevation: 20,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    iotApplications[index]["name"]!,
                                    style: GoogleFonts.abel(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    iotApplications[index]["description"]!,
                                    style: GoogleFonts.acme(
                                      textStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : const SizedBox();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

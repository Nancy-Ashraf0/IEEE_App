import 'package:flutter/material.dart';

import '../../features/committes/data/models/committee.dart';

class CommitteesConstants {
  static const animationDuration = Duration(milliseconds: 300);
  static const curve = Curves.easeInOut;
  static const cardMargin = EdgeInsets.symmetric(vertical: 8, horizontal: 16);
  static const cardPadding = EdgeInsets.all(16);
  static const List<Committee> technicalCommittees = [
    Committee(
      name: 'Web Development',
      iconPath: 'assets/vectors/web_development.png',
      description:
          "Members of this committee primarily focus on HTML and CSS features for front-end development They learn how to structure websites using HTML and style them effectively with CSS, gaining skills in creating responsive layouts that adapt to various screen sizes Members also explore basic design principles to ensure user-friendly interfaces.",
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 27,
    ),
    Committee(
      name: 'AI',
      iconPath: 'assets/vectors/web_development.png',
      description:
          "Members learn to handle the data and analyze it to reach a clean well-organized data then they explore various machine learning algorithms, including supervised and unsupervised learning. They learn to work with frameworks like TensorFlow for building neural networks, as well as what is Prompt Engineering and how they can benefit from it.",
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 35,
    ),
    Committee(
      name: 'Robotics Electrical',
      iconPath: 'assets/vectors/web_development.png',
      description:
          'This group works on designing, building, and controlling robots with a focus on electrical components such as sensors, actuators, and motor controls. The committee uses Arduino for prototyping and project development. They may engage in hands-on projects and competitions related to automation, robot movements, and circuit designs.',
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 30,
    ),
    Committee(
      name: 'Robotics Mechanical',
      iconPath: 'assets/vectors/web_development.png',
      description:
          'This committee deals with the physical structure and mechanics of robots, such as designing joints, gears, and bodies for robots. They ensure that the robotic designs are stable, efficient, and capable of performing tasks in real-world environments.',
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 15,
    ),
    Committee(
      name: 'Embedded Systems',
      iconPath: 'assets/vectors/web_development.png',
      description:
          'This committee teaches members how to program AVR microcontrollers, focusing on low-level hardware interaction. They gain experience with real-time systems, sensor interfaces, and the integration of software with hardware. Topics like interrupts, timers, and communication protocols (e.g., I2C, SPI) are covered.',
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 20,
    ),
    Committee(
      name: 'C++ Programming',
      iconPath: 'assets/vectors/web_development.png',
      description:
          'This committee helps members master C++ programming, focusing on concepts like object-oriented programming (OOP), data structures, and algorithms. They also learn how to optimize code for performance and manage memory effectively, with applications in systems programming and simulations.',
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 33,
    ),
  ];
  static const List<Committee> nonTechnicalCommittees = [
    Committee(
      name: 'ER',
      iconPath: 'assets/vectors/web_development.png',
      description:
          'ER team focuses on building connections with sponsors, companies, and professionals to support the group’s events and initiatives. They secure partnerships, handle outreach for funding, and manage external communications with guest speakers or industry experts. By promoting the group’s brand and fostering collaborations, the ER team ensures the organization gains valuable resources and visibility.',
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 6,
    ),
    Committee(
      name: 'Multimedia',
      iconPath: 'assets/vectors/web_development.png',
      description:
          "Multimedia leads the creative team in designing visual content for events, campaigns, and promotions. They oversee the creation of graphics, videos, and other multimedia materials that align with the group's brand and goals. Additionally, they ensure consistency across all visual content, manage the workflow of designers, and collaborate with other teams to produce engaging materials for social media, presentations, and event marketing. Their role is crucial in enhancing the group’s visual identity and communication.",
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 9,
    ),
    Committee(
      name: 'Logistics',
      iconPath: 'assets/vectors/web_development.png',
      description:
          'The Logistics committee ensures the smooth coordination of all events and resources, working behind the scenes to make sure everything is in place.',
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 5,
    ),
    Committee(
      name: 'HR',
      iconPath: 'assets/vectors/web_development.png',
      description:
          'HR is responsible for managing member recruitment, development, and engagement. They handle the onboarding of new members, organize training sessions, and ensure team cohesion through activities that boost morale and teamwork. Additionally, they monitor member performance, address any concerns, and foster a positive and inclusive environment. By maintaining strong internal communication and supporting the personal and professional growth of members, the HR team plays a key role in keeping the organization running smoothly and effectively.',
      briefDescription:
          'Members of this committee primarily focus on HTML and CSS features for front-end development',
      membersCount: 7,
    ),
  ];
}

import 'package:flutter/material.dart';
import '../constants.dart';
import '../elements/animated_heading.dart';
import '../elements/textbox_widget.dart';

class OtherWork extends StatelessWidget {
  const OtherWork({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      color: kForegroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedHeading(
            text: 'Other work experience',
            style: kHeadingStyle.copyWith(color: kPurpleColor),
          ),
          const SizedBox(height: 40),
          TextBox(
            text:
                'Administrator | Boris Invest Company SL, Tenerife | May 2020 - Dec 2021\nOrganising and translating documents, notary & tax office duties\n\nReceptionist of the Private Villas | Bahia del Duque, Tenerife | Dec 2018 - Sep 2019\nFront Desk Receptionist | Iberostar Group, Tenerife | Jul 2018 - Nov 2018\nFront Desk Intern | Atlanta Augustus, Prague | Jun 2016 - Aug 2016\nThese 3 jobs shared very similar duties: Oracle & Prestige software, guest management in 5 languages: check-in & out, upselling, personal requests, tourist advice, cash closing, booking transport, excursions etc.\n\nReal Estate Assistant | Promotions Centre SL, Tenerife | Feb 2015 - May 2015\nUpdating info on real estate platforms, showing real estate objects, capturing new properties and buyers',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../app/color.dart';

class DoctorCard extends StatelessWidget {
  //const DoctorCard({super.key});
  final int _index;
  DoctorCard({index}) : _index = index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: (_index == 0) ? blue5 : Colors.white,
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(15.0)),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  //color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/profile/doctor-female.jpg',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(25),
                  shape: BoxShape.rectangle,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dr Xiao Ying",
                      maxLines: 3,
                      style: TextStyle(
                          fontFamily: "Pop",
                          fontSize: 20.0,
                          color: (_index == 0) ? Colors.white : Colors.black87,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Specialist in Emergency",
                      style: TextStyle(
                          fontFamily: "Pop",
                          fontSize: 12.0,
                          color:
                              (_index == 0) ? Colors.white : Colors.grey[800],
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    MaterialButton(
                      onPressed: () => Navigator.popAndPushNamed(
                                          context, "/doctorscreen"),
                      minWidth: double.infinity,
                      height: 40,
                      elevation: 0,
                      color: (_index == 0) ? Colors.white : null,
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color:
                                  (_index == 0) ? Colors.white : Colors.black87,
                              width: 2),
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "View Doctor",
                        style: TextStyle(
                            fontSize: 20.0,
                            color: (_index == 0) ? blue5 : Colors.grey[800],

                            //fontWeight: FontWeight.w600,
                            fontFamily: "Lobster"),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }

  Row hello(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            //color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.2,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://picsum.photos/seed/871/600',
                ),
              ),
              Text(
                'Dr Freddy Sinaga',
                //style: FlutterFlowTheme.of(context).bodyText1,
              ),
              Text(
                'General Practice',
              ),
              // FFButtonWidget(
              //   onPressed: () {
              //     print('Button pressed ...');
              //   },
              //   text: 'View',
              //   options: FFButtonOptions(
              //     width: 130,
              //     height: 40,
              //     //color: FlutterFlowTheme.of(context).primaryColor,
              //     text//Style: FlutterFlowTheme.of(context)
              //         .subtitle2
              //         .override(
              //           fontFamily: 'Poppins',
              //           color: Colors.white,
              //         ),
              //     borderSide: BorderSide(
              //       color: Colors.transparent,
              //       width: 1,
              //     ),
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}

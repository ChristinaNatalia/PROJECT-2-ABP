import 'package:flutter/material.dart';
import 'package:reviewhotel/Wilayah.dart';
import 'package:reviewhotel/Hotel.dart';
import 'package:google_fonts/google_fonts.dart';

class ListHotelWidget extends StatefulWidget {
  const ListHotelWidget({Key? key, required this.wilayah}) : super(key: key);
  final Wilayah wilayah;
  @override
  _ListHotelWidgetState createState() => _ListHotelWidgetState();
}

class _ListHotelWidgetState extends State<ListHotelWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  List<MiniHotel> dummyData = [
    MiniHotel(
        "Panen Hotel",
        'https://lh3.googleusercontent.com/p/AF1QipNe4yjYeo1HfKGDcJj4jHR8bx4h2ZPvgekLFuOb=w296-h202-n-k-no-v1-rj',
        9.3,234),
    MiniHotel(
        "Grand Tebu Hotel",
        'https://lh3.googleusercontent.com/p/AF1QipOzGa_QRqwbC26ptY8BEnEuEQyxoICnzZjlFTQp=w296-h202-n-k-no-v1-rj',
        8.8,345),
    MiniHotel(
        "Subwow Hostel",
        'https://lh3.googleusercontent.com/proxy/dHnbYDV0AgRUNY9HuyaB_OBBpe8XLPdQP49JfLcA2TNH-5Ii1yuaxbUGI1PWfwroRbz1ehZkx-I7lnq3pAveNkESID9-xJCBp9Lt5ZckXXhNRESahwhHv-306hLPVMCLPOo291sOz25mhXXkFemt3ZYI6PERtCU=w296-h202-n-k-no-v1-rj',
        4.5,320),
    MiniHotel(
        "Hotel Dafam Rio",
        'https://lh3.googleusercontent.com/p/AF1QipM0EzkhXLL5g5TkqcnzstS_7ysHd3JXbf336r0U=w296-h202-n-k-no-v1-rj',
        7.3,170),
    MiniHotel(
        "The Newton",
        'https://lh3.googleusercontent.com/p/AF1QipPYSXnR7LC5GlOlf25c6mss_IHbEbob16IFyvBG=w296-h202-n-k-no-v1-rj',
        9.3,234),
    MiniHotel(
        "Hostel Santika",
        'https://lh3.googleusercontent.com/proxy/2b9svRT0Az7QJAA2-G72ykhHqwY3kVvPDQGPWG24MlzK0ElOkhFEmKSBmzFXQfpKpbzmW-hIbuLSbwdc1xbLhicE7HPEan37pr1sOlU4mslVkVxWKSxg7wEUmld2IaLiNJeGcR2BiLObdHqlK7YLZUfUbuZ-Zw=w296-h202-n-k-no-v1-rj',
        9.3,234),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF1F4F8),
      body: SafeArea(
          child:SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                              child: IconButton(
                                /*
                                borderColor: Colors.transparent,
                                borderRadius: 30,
                                borderWidth: 1,
                                buttonSize: 50,*/
                                icon: Icon(
                                  Icons.arrow_back_rounded,
                                  color: Color(0xFF0F1113),
                                  size: 24,
                                ),
                                onPressed: () async {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                              child: Text(
                                'Back',
                                style: TextStyle(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF0F1113),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        widget.wilayah.place,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    for (var i in dummyData)
                      Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x3600000F),
                            offset: Offset(0, 2),
                          )
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                    child: Image.network(
                                      i.url_pic,
                                      width: 100,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                    child: Text(
                                      i.place,
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(5, 2, 5, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: ((() {
                                        if(i.rating < 5.0){
                                          return Color(0xFFEE8B60);
                                        }
                                        if(i.rating < 8.0){
                                          return Color(0xFFCDC014);
                                        }
                                        return Color(0xFF04C100);
                                      })()
                                          //'Fair (234)',

                                      )
                                      ,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.05, 0),
                                      child: Text(
                                        i.rating.toString(),
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFF1F4F8),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                    child: Text((() {
                                      String review = i.nreview.toString();
                                      String nreview = '($review)';
                                      if(i.rating < 5.0){
                                        return ""+nreview;
                                      }
                                      if(i.rating < 8.0){
                                        return "Average"+nreview;
                                      }
                                      return "Fine"+nreview;
                                      })()
                                      //'Fair (234)',
                                      
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
        )
      ),
    );
  }
}

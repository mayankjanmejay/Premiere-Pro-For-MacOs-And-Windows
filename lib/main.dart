import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twptest/firebase_options.dart';
import 'package:twptest/shared/data.dart';
import 'package:twptest/shared/functions.dart';
import 'package:twptest/views/carousel.dart';
import 'package:twptest/views/loadFSData.dart';

/***
 * Author: Mayank Janmejay
 * Email : info@mayank-j.com
 * Written For : Privilee test
 */
int count=0;
initFB()
async {

bool done=false;
  while (!done) {
try {
  count++;
  await Firebase.initializeApp(
    name: 'Privilee$count',
  options: DefaultFirebaseOptions.currentPlatform,
);
    done=true;
} catch (e) {
    count++;
  
}
}

}
Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await initFB();
  runApp(const PTest());
}

class PTest extends StatelessWidget {
  const PTest({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Privilee Test',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
         primarySwatch: Colors.blue,
     primaryColor: Color.fromRGBO(98, 120, 232, 1.0),
     colorScheme: ColorScheme(
                              primary: Colors.blue.shade300, 
                              primaryVariant: Color.fromRGBO(98, 120, 232, 0.7), 
                              secondary:  Color.fromRGBO(236, 244, 255, 1.0), 
                              secondaryVariant: Color.fromRGBO(236, 244, 255,0.7), 
                              surface: Colors.grey.shade100, 
                              background: Colors.grey.shade50, 
                              error: Colors.red.shade800, 
                              onPrimary: Colors.grey.shade900, 
                              onSecondary: Colors.grey.shade900,
                              onSurface:  Colors.grey.shade900, 
                              onBackground:  Colors.grey.shade900, 
                              onError:  Colors.grey.shade100, 
                              brightness: Brightness.light),
                              elevatedButtonTheme: ElevatedButtonThemeData( style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(98, 120, 232, 1.0),
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ))
      ),
      home:  DataSourceSelection(),
    );
  }
}


class DataSourceSelection extends StatefulWidget {
  DataSourceSelection({Key? key}) : super(key: key);

  @override
  State<DataSourceSelection> createState() => _DataSourceSelectionState();
}

class _DataSourceSelectionState extends State<DataSourceSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Source Selection', style:GoogleFonts.poppins( color: Colors.grey.shade50 ), 
        ),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Container(
          height: 350,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30)),
              Center(
                child: Container(
                  width: width(context)-100,
                  height: 50,
                  child: ElevatedButton.icon(onPressed:  () async {
                    var headers=await localFetchHeaders();
                    var data= await localFetchCDetailList();

                    navTo(CarouselView(headers: headers, data: data), context);

                  }, icon: Icon(AntIcons.databaseOutlined ), label: Text('Flutter Developer Challenge: Local Object Storage')),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
              Center(
                child: Container(
                  width: width(context)-100,
                  height: 50,
                  child: ElevatedButton.icon(onPressed:  () async {
                    var headers=await localFetchHeaders();
                    var data= await fetchCDetailFilteredList('');

                    navTo(CarouselView(headers: headers, data: data), context);

                  }, icon: Icon(AntIcons.databaseOutlined ), label: Text('Flutter Developer Challenge: Local Header + REST GET Venues')),
                ),
              ),
              Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 5)),
              Container(
                 width: width(context)-100,
                  height: 50,
                child: ElevatedButton.icon(onPressed:  () {

                  navTo(LoadFSData(), context);
                  // Used to create the firestore records
                  // for (var item in questions) {
                  //     FirebaseFirestore.instance.collection('Questions').doc().set(item.toJson());
                  // }
                }, icon: Icon(AntIcons.fireTwotone ), label: Text('Flutter Developer Challenge: Firebase'))),
              
            ],
          ),
        ),
      ),
    );
  }
}
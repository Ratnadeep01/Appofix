import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Data_search.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home()
    );
  }
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {  }, icon: Icon(Icons.menu, color: Colors.black, size: 25,),),
          centerTitle: true,
          title: Text('APPOFIX', style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.red.shade800
          ),),
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width/1.05,
                  child: Material(
                    borderRadius: BorderRadius.circular(50),
                    elevation: 1.9,
                    child: TextField(
                      readOnly: true,
                      onTap: (){

                        showSearch(context: context, delegate: Data_search());
                      },
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        hintText: 'Search Your Symptoms, Doctors, Clinics',
                        hintStyle: TextStyle(fontSize: 13.8,color: Colors.grey[700]),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey,width: 0.5),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey,width: 0.5),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 2, horizontal: 0),
                        prefixIcon: const Icon(Icons.search, color: Color(0xffB1230A),),
                      ),
                      style: const TextStyle(fontSize: 14),

                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('appofix_images/doctor.png',
                        width: MediaQuery.of(context).size.width/2),


                      Image.asset('appofix_images/happy_family.png',
                        width: MediaQuery.of(context).size.width/2)
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3.3,
                  width: MediaQuery.of(context).size.width,
                  color: const Color(0xffCAFAFE),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        child: Text('Specialities', style: TextStyle(fontWeight: FontWeight.w600,
                            fontSize: 20, color: Color(0xffB1230A)),),
                      ),
                      Scrollbar(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:
                            [
                              Material(
                                elevation: 3.5,
                                borderRadius: BorderRadius.circular(20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,

                                      ),
                                      height: 140,
                                      width: 140,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('appofix_images/general_physician.png',
                                            width: 90,),
                                          const Text('General Physician',
                                            style: TextStyle(
                                                fontSize: 13,fontWeight: FontWeight.w600,
                                                color: Color(0xffB1230A)
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Material(
                                elevation: 3.5,
                                borderRadius: BorderRadius.circular(20),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,

                                      ),
                                      height: 140,
                                      width: 140,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('appofix_images/dentist.png',
                                            width: 90,),
                                          const Text('Dentist',
                                            style: TextStyle(
                                                fontSize: 13,fontWeight: FontWeight.w600,
                                                color: Color(0xffB1230A)
                                            ),)
                                        ],
                                      ),

                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Material(
                                elevation: 3.5,
                                borderRadius: BorderRadius.circular(10),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,

                                      ),
                                      height: 140,
                                      width: 140,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('appofix_images/derma.png',
                                            width: 90,),
                                          const Text('Dermatologist',
                                            style: TextStyle(
                                                fontSize: 13,fontWeight: FontWeight.w600,
                                                color: Color(0xffB1230A)
                                            ),)
                                        ],
                                      ),

                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Material(
                                elevation: 3.5,
                                borderRadius: BorderRadius.circular(10),
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,

                                      ),
                                      height: 140,
                                      width: 140,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('appofix_images/cardio.png',
                                            width: 90,),
                                          const Text('Cardiologist',
                                            style: TextStyle(
                                                fontSize: 13,fontWeight: FontWeight.w600,
                                                color: Color(0xffB1230A)
                                            ),
                                          ),
                                        ],
                                      ),

                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(width: 20,),
                              Material(
                                borderRadius: BorderRadius.circular(10),
                                elevation: 3.5,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,

                                      ),
                                      height: 140,
                                      width: 140,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset('appofix_images/neuro.png',
                                            width: 90,),
                                          const Text('Neurologist',
                                            style: TextStyle(
                                                fontSize: 13,fontWeight: FontWeight.w600,
                                                color: Color(0xffB1230A)
                                            ),
                                          ),
                                        ],
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
                ),

                const SizedBox(
                  height: 30,
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('appofix_images/quote1.png',
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset('appofix_images/final.png',),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height/2.3,
                        width: MediaQuery.of(context).size.width,
                        color: const Color(0xffCAFAFE),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                              child: Text('Top Specialists',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffB1230A),
                                ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Material(
                                          borderRadius: BorderRadius.circular(15),
                                          elevation: 4.5,
                                          child: Container(
                                            height: 180,
                                            width: 300,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 25),
                                                    child: RatingBar.builder(
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction: Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 30,
                                                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                                                      itemBuilder: (context, _) => const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {



                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [

                                                      Text('Dr. Smitha Shetty',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff6D0000),
                                                        ),),
                                                      Text('Addiction Psychiatrist, Neuropsychiatrist,',
                                                        style: TextStyle(
                                                            height: 2.5,
                                                            fontSize: 12.5
                                                        ),
                                                      ),
                                                      Text('Sexologist', style: TextStyle(
                                                          fontSize: 12.5
                                                      ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),


                                          ),
                                        ),
                                        Positioned(
                                          right: 180,
                                          bottom: 135,
                                          child: Material(
                                            borderRadius: BorderRadius.circular(50),
                                            elevation: 4.5,
                                            child: Container(
                                              child: Image.asset('appofix_images/smitha.png',
                                                scale: 1.4,),
                                              height: 85,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(50),
                                              ),

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Material(
                                          borderRadius: BorderRadius.circular(15),
                                          elevation: 4.5,
                                          child: Container(
                                            height: 180,
                                            width: 300,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 25),
                                                    child: RatingBar.builder(
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction: Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 30,
                                                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                                                      itemBuilder: (context, _) => const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                        print(rating);
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [

                                                      Text('Dr. Rayees Ahmad Wani',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff6D0000),
                                                        ),),
                                                      Text('Addiction Psychiatrist, Neuropsychiatrist,',
                                                        style: TextStyle(
                                                            height: 2.5,
                                                            fontSize: 12.5
                                                        ),
                                                      ),
                                                      Text('Sexologist', style: TextStyle(
                                                          fontSize: 12.5
                                                      ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),


                                          ),
                                        ),
                                        Positioned(
                                          right: 180,
                                          bottom: 135,
                                          child: Material(
                                            borderRadius: BorderRadius.circular(50),
                                            elevation: 4.5,
                                            child: Container(
                                              child: Image.asset('appofix_images/girl.png',
                                              ),
                                              height: 85,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(50),
                                              ),

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
                                    child: Stack(
                                      clipBehavior: Clip.none,
                                      children: [
                                        Material(
                                          borderRadius: BorderRadius.circular(15),
                                          elevation: 4.5,
                                          child: Container(
                                            height: 180,
                                            width: 300,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(15),
                                            ),
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding: const EdgeInsets.fromLTRB(120, 10, 10, 25),
                                                    child: RatingBar.builder(
                                                      initialRating: 3,
                                                      minRating: 1,
                                                      direction: Axis.horizontal,
                                                      allowHalfRating: true,
                                                      itemCount: 5,
                                                      itemSize: 30,
                                                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                                                      itemBuilder: (context, _) => const Icon(
                                                        Icons.star,
                                                        color: Colors.amber,
                                                      ),
                                                      onRatingUpdate: (rating) {
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 16),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: const [

                                                      Text('Dr. Smitha Shetty',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight: FontWeight.w600,
                                                          color: Color(0xff6D0000),
                                                        ),),
                                                      Text('Addiction Psychiatrist, Neuropsychiatrist,',
                                                        style: TextStyle(
                                                            height: 2.5,
                                                            fontSize: 12.5
                                                        ),
                                                      ),
                                                      Text('Sexologist', style: TextStyle(
                                                          fontSize: 12.5
                                                      ),
                                                      ),

                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),


                                          ),
                                        ),
                                        Positioned(
                                          right: 180,
                                          bottom: 135,
                                          child: Material(
                                            borderRadius: BorderRadius.circular(50),
                                            elevation: 4.5,
                                            child: Container(
                                              child: Image.asset('appofix_images/smitha.png',
                                                scale: 1.4,),
                                              height: 85,
                                              width: 85,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.circular(50),
                                              ),

                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),


                                ],
                              ),
                            ),





                          ],
                        )
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height/2.5,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(40, 10, 0, 0),
                        child: Text("Reviews from our user's",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffB1230A),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:[
                              Container(
                                  height: 230,
                                  width: 330,
                                  decoration: const BoxDecoration(
                                      color: Colors.white
                                  ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      elevation: 3,
                                      borderRadius: BorderRadius.circular(50),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset('appofix_images/Vector2.png', scale: 1.2,),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text('Preeti',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('26 Yr old IT Professional'),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 1,
                                      width: 230,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      child: Text('I was in pain and it was really late at night. I wanted help but couldn’t go to see the doctor due to lateness of the hour. '
                                          'Consulted online on Practo and doctor responded immediately.', style: TextStyle(
                                        fontSize: 12,
                                      ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 230,
                                width: 330,
                                decoration: const BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      elevation: 3,
                                      borderRadius: BorderRadius.circular(50),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset('appofix_images/Vector2.png', scale: 1.2,),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text('Preeti',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('26 Yr old IT Professional'),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 1,
                                      width: 230,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      child: Text('I was in pain and it was really late at night. I wanted help but couldn’t go to see the doctor due to lateness of the hour. '
                                          'Consulted online on Practo and doctor responded immediately.', style: TextStyle(
                                        fontSize: 12,
                                      ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 230,
                                width: 330,
                                decoration: const BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      elevation: 3,
                                      borderRadius: BorderRadius.circular(50),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset('appofix_images/Vector2.png', scale: 1.2,),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text('Preeti',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('26 Yr old IT Professional'),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 1,
                                      width: 230,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      child: Text('I was in pain and it was really late at night. I wanted help but couldn’t go to see the doctor due to lateness of the hour. '
                                          'Consulted online on Practo and doctor responded immediately.', style: TextStyle(
                                        fontSize: 12,
                                      ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 230,
                                width: 330,
                                decoration: const BoxDecoration(
                                    color: Colors.white
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Material(
                                      elevation: 3,
                                      borderRadius: BorderRadius.circular(50),
                                      child: Container(
                                        height: 60,
                                        width: 60,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Image.asset('appofix_images/Vector2.png', scale: 1.2,),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text('Preeti',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text('26 Yr old IT Professional'),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 1,
                                      width: 230,
                                      color: Colors.red,
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                                      child: Text('I was in pain and it was really late at night. I wanted help but couldn’t go to see the doctor due to lateness of the hour. '
                                          'Consulted online on Practo and doctor responded immediately.', style: TextStyle(
                                        fontSize: 12,
                                      ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




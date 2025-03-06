import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Showtimes extends StatefulWidget {
  final String movieName;

  Showtimes({required this.movieName});


  @override
  State<Showtimes> createState() => _ShowtimesState();
}

class _ShowtimesState extends State<Showtimes> {
  int selectedDateIndex = 0;

  final List<String> dates = ["24", "25", "26", "27", "28", "29", "30"];
  final List<String> days = ["WED", "THU", "FRI", "SAT", "SUN", "MON", "TUE"];

  final List<Map<String, dynamic>> theaters = [
    {
      "name": "PVR Cinema: One Galle Face Mall",
      "showtimes": ["06:40 PM", "10:00 PM"],
    },
    {
      "name": "Regal Cinema: Bandarawela",
      "showtimes": ["04:00 PM"],
    },
    {
      "name": "Regal Cinemas: Dematagoda",
      "showtimes": ["07:00 PM"],
    },
  ];

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showToolTipMessage();
    });
  }

  void showToolTipMessage() {
    final snackBar = SnackBar(
        content: Text("Check the movie language and format before proceeding"),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: 5),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF333545),
        foregroundColor: Colors.white,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)
        ),
        title:Text(widget.movieName),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(dates.length, (index){
                  return GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedDateIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        color: selectedDateIndex == index ? Colors.blue : Colors.transparent,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          Text(
                            days[index],
                            style: TextStyle(
                              color: selectedDateIndex == index ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 5,),
                          Text(
                            dates[index],
                            style: TextStyle(
                              color: selectedDateIndex == index ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          
          Expanded(
              child: ListView.builder(
                  itemCount: theaters.length,
                  itemBuilder: (context, index){
                    final theater = theaters[index];
                    return Padding(
                        padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            theater["name"],
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              Wrap(
                                spacing: 10,
                                children: theater["showtimes"].map<Widget>((showtimes){
                                  return ElevatedButton(
                                      style: ElevatedButton.styleFrom(

                                        foregroundColor: Colors.green,
                                        side: BorderSide(
                                          color: Colors.green.shade300
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8)
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10)
                                      ),
                                      onPressed: (){},
                                      child: Text(showtimes),
                                  );
                                }).toList(),
                              ),
                              SizedBox(width: 10,),

                              IconButton(
                                icon: Icon(Icons.info_outline),
                                onPressed: (){},
                              )
                            ],
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  }
              )
          )
        ],
      ),

    );
  }
}

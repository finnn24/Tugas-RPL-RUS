import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pts_2021/env/env.dart';

class Description extends StatelessWidget {
  final int id;
  final String original_language;
  final String title;
  final String overview;
  final double popularity;
  final String poster_path;
  final String backdrop_path;
  final String relase_date;
  final int vote_count;
  final double vote_average;

  const Description({
    Key? key,
    required this.id,
    required this.original_language,
    required this.title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.backdrop_path,
    required this.relase_date,
    required this.vote_count,
    required this.vote_average,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return Scaffold(
      backgroundColor: Color(0xff15141F),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(GlobalData.IMAGE_URL + backdrop_path),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                SizedBox(
                  height: 9,
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.blueAccent,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          popularity.toString(),
                          style: TextStyle(color: Colors.white70),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          vote_average.toString() + ' (IMDb)',
                          style: TextStyle(color: Colors.white70),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.white30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Relase Date',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            relase_date,
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Language',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            original_language.toUpperCase(),
                            style: TextStyle(color: Colors.white70),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white30,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Synopsis',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      overview,
                      style: TextStyle(color: Colors.white70),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

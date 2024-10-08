import 'package:flutter/material.dart';
import 'package:musicpayerui/neu_box.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  const SongPage({super.key});

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              SizedBox(height: 10),

              //back button and menu button
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                      height: 58,
                      width: 58,
                      child: NeuBox(child: Icon(Icons.arrow_back))),
                  Text('P L A Y L I S T'),
                  SizedBox(
                      height: 58,
                      width: 58,
                      child: NeuBox(child: Icon(Icons.menu))),
                ],
              ),

              const SizedBox(height: 32),

              //song coverImage, artist name, song name
              NeuBox(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: const Image(
                        height: 300,
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                            'https://i.ytimg.com/vi/Rkt8mtIkYI4/maxresdefault.jpg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Kota The Friend',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700,
                                ),
                              ),
                              const Text(
                                'Birdie',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 32,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 48),

              //start time, shuffle button, repeat button, end time
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('0:00'),
                  Icon(Icons.shuffle),
                  Icon(Icons.repeat),
                  Text('4:22'),
                ],
              ),

              const SizedBox(height: 48),

              //linear bar
              NeuBox(
                child: LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.8,
                  progressColor: Colors.green,
                  backgroundColor: Colors.transparent,
                ),
              ),

              const SizedBox(height: 48),

              //previous song, pause play, skip next song
              const SizedBox(
                height: 82,
                child: Row(
                  children: [
                    Expanded(
                      child: NeuBox(
                        child: Icon(
                          Icons.skip_previous,
                          size: 32,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: NeuBox(
                          child: Icon(Icons.play_arrow, size: 32),
                        ),
                      ),
                    ),
                    Expanded(
                      child: NeuBox(
                        child: Icon(Icons.skip_next, size: 32),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

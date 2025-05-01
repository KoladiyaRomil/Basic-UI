import 'package:flutter/material.dart';
import 'package:new_app/pages/EmojiProducts_Page.dart';
import 'package:new_app/pages/notification_page.dart';
import 'package:new_app/pages/performemojiroll_page.dart';
import 'package:new_app/pages/skildetails_page.dart';
import 'package:new_app/pages/skillproduct_page.dart';
import 'package:new_app/utils/emoticon_face.dart';
import 'package:new_app/utils/exercises.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 52, 95),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
),
      body: SafeArea(
        child: Column(
          children: [
            //greating row
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // hi romil
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Romil!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 6.0),
                          Text(
                            '13 jan,2025',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      // notification
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 179, 162, 162),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: EdgeInsets.all(0.1),
                        child: IconButton(
                          icon: Icon(Icons.notifications),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NotificationsPage(),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  //search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 5),
                        Text('search', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                  // how do you feel
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '💗🥰 𝒽ℴ𝓌 𝒹ℴ 𝓎ℴ𝓊 𝒻ℯℯ𝓁...💖?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              icon: Icon(Icons.more_horiz, color: const Color.fromARGB(255, 226, 224, 223)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => EmojiProductsPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  // 7 dif faces
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: Checkbox.width,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => EmojiDetailPage(
                                      emoji: '😂',
                                      label: 'Funny',
                                      description:
                                          'This emoji represents laughter or joy. Often used in funny situations.',
                                    ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              EmoticonFace(emoticonFace: '😂'),
                              SizedBox(height: 8),
                              Text(
                                'Funny',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        //fine
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => EmojiDetailPage(
                                      emoji: '🙂',
                                      label: 'Fine',
                                      description:
                                          'This emoji is used to show Fine, as it is , or something awesome.',
                                    ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              EmoticonFace(emoticonFace: '🙂'),
                              SizedBox(height: 8),
                              Text(
                                'Fine',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        //well
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => EmojiDetailPage(
                                      emoji: '😀',
                                      label: 'Well',
                                      description:
                                          'This emoji is used to show Well, in run , or something awesome.',
                                    ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              EmoticonFace(emoticonFace: '😀'),
                              SizedBox(height: 8),
                              Text(
                                'Well',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        //excellent
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => EmojiDetailPage(
                                      emoji: '😉',
                                      label: 'Excellent',
                                      description:
                                          'This emoji is used to show Excellente, Good, or something awesome.',
                                    ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              EmoticonFace(emoticonFace: '😉'),
                              SizedBox(height: 8),
                              Text(
                                'Excellent',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        //silent
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => EmojiDetailPage(
                                      emoji: '🤫',
                                      label: 'silent',
                                      description:
                                          'This emoji is used to show silent, quite, or something awesome.',
                                    ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              EmoticonFace(emoticonFace: '🤫'),
                              SizedBox(height: 8),
                              Text(
                                'silent',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        //Rost
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => EmojiDetailPage(
                                      emoji: '🔥',
                                      label: 'Rost',
                                      description:
                                          'This emoji is used to show fire, heat, or something awesome.',
                                    ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              EmoticonFace(emoticonFace: '🔥'),
                              SizedBox(height: 8),
                              Text(
                                'Rost',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        //Bad
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder:
                                    (_) => EmojiDetailPage(
                                      emoji: '🙄',
                                      label: 'Bad',
                                      description:
                                          'This emoji is used to show Bad, not for good, or something awesome.',
                                    ),
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              EmoticonFace(emoticonFace: '🙄'),
                              SizedBox(height: 8),
                              Text(
                                'Bad',
                                style: TextStyle(color: Colors.white),
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
            SizedBox(height: 25),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[400],
                child: Center(
                  child: Column(
                    children: [
                      //Exercises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Skills',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.more_horiz,
                                  color: const Color.fromARGB(255, 15, 1, 1),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) => SkillsProductsPage(),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      // list view of exrcises
                      Expanded(
                        child: ListView(
                          children: [
                            Exercises(
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberofExerciseName: 5,
                              Color: const Color.fromARGB(255, 75, 14, 13),
                              onTap: () {
                                Navigator.push(      
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'Speaking Skills',
                                          totalExercises: 5,
                                          color: const Color.fromARGB(
                                             255,
                                            83,
                                            22,
                                            21,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                            Exercises(
                              icon: Icons.book,
                              exerciseName: 'Reading Skills',
                              numberofExerciseName: 11,
                              Color: const Color.fromARGB(255, 42, 77, 27),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'Reading Skills',
                                          totalExercises: 11,
                                          color: const Color.fromARGB(
                                            255,
                                            30,
                                            97,
                                            18,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                            Exercises(
                              icon: Icons.star,
                              exerciseName: 'Ratting Skills',
                              numberofExerciseName: 18,
                              Color: const Color.fromARGB(255, 81, 93, 15),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'Ratting Skills',
                                          totalExercises: 18,
                                          color: const Color.fromARGB(
                                            255,
                                            81,
                                            93,
                                            15,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                            Exercises(
                              icon: Icons.abc,
                              exerciseName: 'Writing Skills',
                              numberofExerciseName: 19,
                              Color: Color.fromARGB(255, 52, 47, 101),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'Writing Skils',
                                          totalExercises: 19,
                                          color: Color.fromARGB(
                                            255,
                                            52,
                                            47,
                                            101,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ), 
                            Exercises(                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                              icon: Icons.format_paint,                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                              exerciseName: 'Drowing Skills',
                              numberofExerciseName: 6,
                              Color: Color.fromARGB(255, 52, 47, 101),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'Drowing Skills',
                                          totalExercises: 6,
                                          color: Color.fromARGB(
                                            255,
                                            52,
                                            47,
                                            101,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                            Exercises(
                              icon: Icons.type_specimen,
                              exerciseName: 'Typing Skills',
                              numberofExerciseName: 8,
                              Color: const Color.fromARGB(255, 35, 64, 88),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'Typing Skills',
                                          totalExercises: 8,
                                          color: const Color.fromARGB(
                                            255,
                                            26,
                                            60,
                                            82,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                            Exercises(
                              icon: Icons.create,
                              exerciseName: 'creating Skills',
                              numberofExerciseName: 10,
                              Color: const Color.fromARGB(255, 132, 17, 134),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'creating Skills',
                                          totalExercises: 10,
                                          color: const Color.fromARGB(
                                            255,
                                            132,
                                            17,
                                            134,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                            Exercises(
                              icon: Icons.rate_review_outlined,
                              exerciseName: 'Feedback',
                              numberofExerciseName: 12,
                              Color: const Color.fromARGB(255, 54, 10, 42),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (context) => SkillDetailsPage(
                                          title: 'Feedback',
                                          totalExercises: 12,
                                          color: const Color.fromARGB(
                                            255,
                                            52,
                                            9,
                                            44,
                                          ),
                                        ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

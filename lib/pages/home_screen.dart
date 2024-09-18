import 'package:design/common_widgets/common_dateBox.dart';
import 'package:design/constants/app_colors.dart';
import 'package:design/constants/app_images.dart';
import 'package:design/constants/app_text.dart';
import 'package:design/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DateTime> weekDays = [];
  String _selectedMode = '';
  DateTime _focusedDay = DateTime.now();
  List<DateTime> selectedDates = [];

  void _deleteDate(DateTime date) {
    setState(() {
      selectedDates.remove(date);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            _buildHeaderSection(),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    _buildDailyChallengeSection(),
                    const SizedBox(height: 20),
                    _buildDatePicker(),
                    const SizedBox(height: 20),
                    _buildYourPlan(),
                    const SizedBox(height: 70),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Row(
      children: [
          ClipRRect(
          borderRadius:
          BorderRadius.circular(50),
          child: const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://randomuser.me/api/portraits/men/66.jpg'),
          ),
        ),
        const Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(lblIntro,
                style: AppText.textBold
                    .copyWith(color: primaryColor, fontSize: 22)),
            Text(lblDummyDate,
                style: AppText.textMedium
                    .copyWith(color: Colors.grey, fontSize: 16)),
          ],
        ),
        const Spacer(),
        const Icon(Icons.search, size: 30),
      ],
    );
  }

  Widget _buildDailyChallengeSection() {
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor.withOpacity(0.8),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                            lblDailyChallenge,
                          style:AppText.textBold
                              .copyWith(color: primaryColor, fontSize: 32)
                      ),
                      const SizedBox(height: 5,),
                      Text(
                          lblSubTitle,
                          style: AppText.textMedium
                              .copyWith(color: primaryColor.withOpacity(0.8), fontSize: 16)
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 1,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  return Stack(
                                    children: <Widget>[
                                      Visibility(
                                        visible: true,
                                        child: Positioned(
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: const CircleAvatar(
                                                  radius: 25,
                                                  backgroundImage: NetworkImage(
                                                      'https://randomuser.me/api/portraits/women/65.jpg'),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 18.0,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          child: Container(
                                            // color: Colors.white,
                                            width: 40,
                                            height: 40,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: const CircleAvatar(
                                                  radius: 25,
                                                  backgroundImage: NetworkImage(
                                                      'https://randomuser.me/api/portraits/men/66.jpg'),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 36.0,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          child: Container(
                                            // color: Colors.white,
                                            width: 40,
                                            height: 40,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: const CircleAvatar(
                                                  radius: 25,
                                                  backgroundImage: NetworkImage(
                                                      'https://randomuser.me/api/portraits/men/65.jpg'),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 54.0,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          child: Container(
                                            // color: Colors.white,
                                            width: 40,
                                            height: 40,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(1.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  width: 40,
                                                  height: 40,
                                                  color: Colors.deepPurple,
                                                  child:   Text('+4',style: AppText.textMedium
                                                      .copyWith(color: Colors.white.withOpacity(0.8), fontSize: 14)),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          )
                        ],
                      ),
                    ]),
              ),
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.7),
                        ],
                        stops: [0.6, 1.0],
                      ),
                    ),
                    // color: Colors.yellow,
                    child: Image.asset(imgHome),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDatePicker() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: ['Month', 'Week', 'Day'].map((mode) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedMode = mode;
                });
                if (mode == 'Month' || mode == 'Week' || mode == 'Day') {
                  _showCalendarDialog();
                }
              },
              child: Container(
                height: 30,
                width: 65,
                margin: const EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: Colors.grey)),
                child: Text(mode, style: const TextStyle(color: Colors.black)),
              ),
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            selectedDates.isNotEmpty
                ? Container(
                    padding: const EdgeInsets.only(left: 15),
                    height: 130,
                    width: 265,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: selectedDates.length,
                      itemBuilder: (context, index) {
                        return DateCapsule(
                          date: selectedDates[index],
                          onDelete: () {
                            _deleteDate(selectedDates[index]);
                          },
                        );
                      },
                    ),
                  )
                : const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Center(
                      child: Text(lblNoDate),
                    ),
                  ),
          ],
        )
      ],
    );
  }

  void _showCalendarDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(lblSelectDate),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState1) {
              return Container(
                height: 350,
                width: double.maxFinite,
                child: TableCalendar(
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  calendarFormat: _getCalendarFormat(),
                  focusedDay: _focusedDay,
                  selectedDayPredicate: (day) {
                    return selectedDates
                        .any((selectedDate) => isSameDay(selectedDate, day));
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState1(() {
                      _focusedDay = focusedDay;
                      if (!selectedDates.contains(selectedDay)) {
                        selectedDates.add(selectedDay);
                      }
                    });
                  },
                  rowHeight: 45,
                  calendarStyle: const CalendarStyle(
                    selectedDecoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color:secondaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {});
              },
              child: const Text(lblOk),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(lblCancel),
            ),
          ],
        );
      },
    );
  }

  CalendarFormat _getCalendarFormat() {
    switch (_selectedMode) {
      case 'Month':
        return CalendarFormat.month;
      case 'Week':
        return CalendarFormat.week;
      case 'Day':
        return CalendarFormat
            .month;
      default:
        return CalendarFormat.month;
    }
  }

  Widget _buildYourPlan() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(lblYourPlan,
            style:
                AppText.textBold.copyWith(color: primaryColor, fontSize: 24)),
        const SizedBox(height: 10),
        Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: _buildYogaGroupCard()),
                const SizedBox(width: 16),
                Expanded(child: Column(
                  children: [
                    _buildBalanceCard(),
                    const SizedBox(height: 10),
                    _buildSocialMediaBar()
                  ],
                )),
              ],
            ),
          ],
        ),
        // SizedBox(height: 16),
      ],
    );
  }


  Widget _buildYogaGroupCard() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: dartYellowColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text('Medium', style: TextStyle(fontSize: 12)),
          ),
          const SizedBox(height: 8),
          const Text('Yoga Group', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('25 Nov.'),
          const Text('14:00-15:00'),
          const Text('A5 room'),
          const SizedBox(height: 26),
          const Row(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/50.jpg'),
              ),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Trainer'),
                  Text('Tiffany Way', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceCard() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: blueShadeColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text('Light', style: TextStyle(fontSize: 12)),
          ),
          const SizedBox(height: 8),
          const Text('Balance', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          const Text('28 Nov.'),
          const Text('18:00-19:30'),
          const Text('A2 room'),
        ],
      ),
    );
  }

  Widget _buildSocialMediaBar() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
      decoration: BoxDecoration(
        color: socialColor.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _socialIcon(Icons.camera_alt),
          _socialIcon(Icons.play_circle_filled),
          _socialIcon(Icons.chat_bubble),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration:   BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: socialColor,width: 3),

      ),
      child: Icon(icon,size: 18, color: socialColor.withOpacity(0.5)),
    );
  }
}


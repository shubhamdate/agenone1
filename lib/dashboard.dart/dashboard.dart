import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  State<StatefulWidget> createState() {
    return _home();
  }
}

class _home extends State<Home> {
  List<bool> isSelected = [true, false, false, false];
  late bool isMobile;
  late bool istab;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.width;

    isMobile = screenWidth < 520 ? true : false;
    istab = screenWidth >= 520 && screenWidth <= 1280 ? true : false;
    print(screenWidth);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bg_1.png"),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.color),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                      child: isMobile
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: SvgPicture.asset(
                                    'assets/logo/appbar_logo.svg',
                                    height: 50,
                                  ),
                                ),
                                PopupMenuButton(
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Container(
                                        padding: EdgeInsets.only(right: 30),
                                        child: const Icon(
                                          Icons.menu,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      )),
                                  onSelected: (value) {
                                    if (value == "home") {
                                    } else if (value == "services") {
                                    } else if (value == "project") {
                                    } else if (value == "aboutus") {}
                                  },
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry>[
                                    const PopupMenuItem(
                                        value: "home",
                                        child: Text('Home',
                                            style: TextStyle(fontSize: 15))),
                                    const PopupMenuItem(
                                        value: "services",
                                        child: Text('Services',
                                            style: TextStyle(fontSize: 15))),
                                    const PopupMenuItem(
                                        value: "project",
                                        child: Text('Project',
                                            style: TextStyle(fontSize: 15))),
                                    const PopupMenuItem(
                                      value: "aboutus",
                                      child: Text('About Us',
                                          style: TextStyle(fontSize: 15)),
                                    ),
                                  ],
                                )
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // padding: EdgeInsets.only(left: 20),
                                  child: SvgPicture.asset(
                                    'assets/logo/appbar_logo.svg',
                                    height: 50,
                                  ),
                                ),
                                Container(
                                  width: istab
                                      ? screenWidth * 0.5
                                      : isMobile
                                          ? screenWidth * 0.5
                                          : 1280 * 0.6,
                                  child: Expanded(
                                    child: istab
                                        ? Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Home',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Services',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Project',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'About US',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ],
                                          )
                                        : Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Home',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Services',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Project',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'About US',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  padding: EdgeInsets.only(right: 2),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 53, 155, 88),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: const Text(
                                      'Contact Us',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Color.fromARGB(255, 72, 73, 81)),
                              child: const Text(
                                'NUMBER ONE CREATIVE DIGITAL AGENCY ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Column(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'Smart Choices',
                                      style: TextStyle(
                                        color: Color.fromARGB(255, 53, 155, 88),
                                        fontSize: isMobile ? 40 : 50,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'For Your Business Growth ',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: isMobile ? 40 : 50,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Column(
                                  children: [
                                    Text(
                                      'We\'re a team of experienced designers, developers,',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 217, 215, 215),
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      'and marketers, passionate about delivering exceptional digital solutions.',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 217, 215, 215),
                                        fontSize: 15,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 50,
                                ),
                                Container(
                                  height: 68,
                                  padding: EdgeInsets.all(10),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 53, 155, 88),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          'Contact Us',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Container(
                              child: isMobile
                                  ? Container(
                                      height: 347,
                                      width: 327,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/card_2.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 50, bottom: 30),
                                            child: const Text(
                                              'Benefit of improving your business',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 20),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          SizedBox(
                                            height: 200,
                                            child: PageView(
                                              children: [
                                                Column(
                                                  children: [
                                                    Container(
                                                      // padding: EdgeInsets.only(left: 20),
                                                      child: SvgPicture.asset(
                                                        'assets/logo/icon_1.svg',
                                                        height: 100,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      'Expanding the Market',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            istab ? 15 : 18,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      // padding: EdgeInsets.only(left: 20),
                                                      child: SvgPicture.asset(
                                                        'assets/logo/icon_2.svg',
                                                        height: 100,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      'Cost-Effective',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            istab ? 15 : 18,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      // padding: EdgeInsets.only(left: 20),
                                                      child: SvgPicture.asset(
                                                        'assets/logo/icon_3.svg',
                                                        height: 100,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      'More Professional',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            istab ? 15 : 18,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Container(
                                                      // padding: EdgeInsets.only(left: 20),
                                                      child: SvgPicture.asset(
                                                        'assets/logo/icon_4.svg',
                                                        height: 100,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Text(
                                                      'Attract Client',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            istab ? 15 : 18,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Container(
                                                      height: 20,
                                                      child: Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .grey),
                                                          ),
                                                          const SizedBox(
                                                            width: 10,
                                                          ),
                                                          Container(
                                                            height: 10,
                                                            width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100),
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  : Container(
                                      height: 384,
                                      width: 1280,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: AssetImage(
                                            'assets/images/card_1.png',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.only(
                                                top: 50, bottom: 30),
                                            child: const Text(
                                              'Benefit of improving your business',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 30),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 30,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    // padding: EdgeInsets.only(left: 20),
                                                    child: SvgPicture.asset(
                                                      'assets/logo/icon_1.svg',
                                                      height: istab ? 70 : 100,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'Expanding the Market',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: istab ? 15 : 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    // padding: EdgeInsets.only(left: 20),
                                                    child: SvgPicture.asset(
                                                      'assets/logo/icon_2.svg',
                                                      height: istab ? 70 : 100,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'Cost-Effective',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: istab ? 15 : 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    // padding: EdgeInsets.only(left: 20),
                                                    child: SvgPicture.asset(
                                                      'assets/logo/icon_3.svg',
                                                      height: istab ? 70 : 100,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'More Professional',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: istab ? 15 : 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    // padding: EdgeInsets.only(left: 20),
                                                    child: SvgPicture.asset(
                                                      'assets/logo/icon_4.svg',
                                                      height: istab ? 70 : 100,
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 20,
                                                  ),
                                                  Text(
                                                    'Attract Client',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: istab ? 15 : 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      padding: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'The Services We Offer',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: isMobile ? 25 : 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ' For You',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Color.fromARGB(255, 41, 112, 43),
                              fontSize: isMobile ? 25 : 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      width: 1280,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            title: Text(
                              '01 UI/UX Design',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 39, 144, 97),
                                  fontSize: isMobile ? 20 : 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                color: Color.fromARGB(255, 31, 115, 100),
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward)),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: [
                                const Text(
                                  'Lorem ipsum dolor sit amet consectetur. Nibh luctus nisi ac eu. Ultricies nisl enim lacus id aliquam montes euismod urna sem.',
                                  textAlign: TextAlign.left,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Image.asset('assets/images/con_1.png')
                              ],
                            ),
                          ),
                          ListTile(
                            title: Text(
                              '02 Digital Marketing',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: isMobile ? 20 : 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                color: Colors.black,
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward)),
                          ),
                          ListTile(
                            title: Text(
                              '03 Social Media Management',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: isMobile ? 20 : 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                color: Colors.black,
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward)),
                          ),
                          ListTile(
                            title: Text(
                              '04 Development',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: isMobile ? 20 : 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            trailing: IconButton(
                                color: Colors.black,
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 1280,
                color: Color.fromARGB(255, 222, 240, 223),
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    Text(
                      'We are passionate about helping businesses grow and succeed in the digital age. We take pride in our work and strive to exceed your expectations every time.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: isMobile ? 20 : 25,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: screenWidth * 0.81,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromARGB(255, 24, 115, 68)),
                      child: isMobile
                          ? const Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '10+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Years of Experiences',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Text(
                                      '666+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Project Completed',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Text(
                                      '555+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Satisfied Client',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                SizedBox(height: 20),
                                Column(
                                  children: [
                                    Text(
                                      '10+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Awards Achieved',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            )
                          : const Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '10+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Years of Experiences',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '666+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Project Completed',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '555+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Satisfied Client',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      '10+',
                                      style: TextStyle(
                                          fontSize: 40,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'Awards Achieved',
                                      style: TextStyle(color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ],
                            ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 1280,
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 50, 30, 30),
                  child: Column(
                    children: [
                      Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Our Project Have Been',
                                    style: TextStyle(
                                      fontSize: isMobile ? 25 : 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' Done',
                                    style: TextStyle(
                                      fontSize: isMobile ? 25 : 40,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 36, 119, 39),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Take a look at some of our recent projects and see how we\'ve helped other businesses elevate their brand and drive business growth.',
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Container(
                              width: istab
                                  ? screenWidth * 0.5
                                  : isMobile
                                      ? screenWidth * 0.6
                                      : 600,
                              padding: EdgeInsets.all(0),
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.white,
                              ),
                              child: istab
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        ToggleButtons(
                                          isSelected: isSelected,
                                          selectedColor: Colors.white,
                                          color: Colors.black,
                                          fillColor: const Color.fromARGB(
                                              255, 12, 159, 17),
                                          renderBorder: false,
                                          // borderRadius: BorderRadius.circular(100),
                                          children: [
                                            Container(
                                                padding: EdgeInsets.all(10),
                                                child: const Text('UI/UX',
                                                    style: TextStyle(
                                                        fontSize: 15))),
                                            Container(
                                                padding: EdgeInsets.all(10),
                                                child: const Text('Digital ',
                                                    style: TextStyle(
                                                        fontSize: 15))),
                                            Container(
                                                padding: EdgeInsets.all(10),
                                                child: const Text('SMM',
                                                    style: TextStyle(
                                                        fontSize: 15))),
                                            Container(
                                                padding: EdgeInsets.all(10),
                                                child: const Text('Dev',
                                                    style: TextStyle(
                                                        fontSize: 15))),
                                          ],
                                          onPressed: (int newIndex) {
                                            setState(() {
                                              for (int index = 0;
                                                  index < isSelected.length;
                                                  index++) {
                                                if (index == newIndex) {
                                                  isSelected[index] = true;
                                                } else {
                                                  isSelected[index] = false;
                                                }
                                              }
                                            });
                                          },
                                        ),
                                      ],
                                    )
                                  : isMobile
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ToggleButtons(
                                              isSelected: isSelected,
                                              selectedColor: Colors.white,
                                              color: Colors.black,
                                              fillColor: const Color.fromARGB(
                                                  255, 12, 159, 17),
                                              renderBorder: false,
                                              // borderRadius: BorderRadius.circular(100),
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text('UI/UX',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text(
                                                        'Digital ',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text('SMM',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text('Dev',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                              ],
                                              onPressed: (int newIndex) {
                                                setState(() {
                                                  for (int index = 0;
                                                      index < isSelected.length;
                                                      index++) {
                                                    if (index == newIndex) {
                                                      isSelected[index] = true;
                                                    } else {
                                                      isSelected[index] = false;
                                                    }
                                                  }
                                                });
                                              },
                                            ),
                                          ],
                                        )
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ToggleButtons(
                                              isSelected: isSelected,
                                              selectedColor: Colors.white,
                                              color: Colors.black,
                                              fillColor: const Color.fromARGB(
                                                  255, 12, 159, 17),
                                              renderBorder: false,
                                              // borderRadius: BorderRadius.circular(100),
                                              children: [
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text(
                                                        'UI/UX Design',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text(
                                                        'Digital Marketing',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text(
                                                        'Sasmed Management',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                                Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: const Text(
                                                        'Development',
                                                        style: TextStyle(
                                                            fontSize: 15))),
                                              ],
                                              onPressed: (int newIndex) {
                                                setState(() {
                                                  for (int index = 0;
                                                      index < isSelected.length;
                                                      index++) {
                                                    if (index == newIndex) {
                                                      isSelected[index] = true;
                                                    } else {
                                                      isSelected[index] = false;
                                                    }
                                                  }
                                                });
                                              },
                                            ),
                                          ],
                                        ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 64,
                      ),
                      isMobile
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color.fromARGB(255, 27, 26, 26),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                          'assets/images/project_2.png',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: const Text(
                                          'Title',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 10, 10),
                                        child: const Text(
                                          'We are designed to help your business thrive in the online world.',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: Color.fromARGB(255, 27, 26, 26),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Image.asset(
                                          'assets/images/project_1.png',
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.7,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: const Text(
                                          'Title',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        padding:
                                            EdgeInsets.fromLTRB(10, 0, 10, 10),
                                        child: const Text(
                                          'We are designed to help your business thrive in the online world.',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : istab
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Color.fromARGB(255, 27, 26, 26),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Image.asset(
                                              'assets/images/project_2.png',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.35,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Title',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 10),
                                            child: const Text(
                                              'We are designed to help your business thrive in the online world.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Color.fromARGB(255, 27, 26, 26),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Image.asset(
                                              'assets/images/project_1.png',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.35,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Title',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 10),
                                            child: const Text(
                                              'We are designed to help your business thrive in the online world.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Color.fromARGB(255, 27, 26, 26),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Image.asset(
                                              'assets/images/project_2.png',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Title',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 10),
                                            child: const Text(
                                              'We are designed to help your business thrive in the online world.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(16),
                                        color: Color.fromARGB(255, 27, 26, 26),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(10),
                                            child: Image.asset(
                                              'assets/images/project_1.png',
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.3,
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.only(left: 10),
                                            child: const Text(
                                              'Title',
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            padding: EdgeInsets.fromLTRB(
                                                10, 0, 10, 10),
                                            child: const Text(
                                              'We are designed to help your business thrive in the online world.',
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 1280,
                color: Colors.black,
                child: istab
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  child: Image.asset('assets/partner/slack.png',
                                      color: Colors.white)),
                              SizedBox(
                                  child: Image.asset(
                                      'assets/partner/google.png',
                                      color: Colors.white)),
                              SizedBox(
                                  child: Image.asset(
                                      'assets/partner/netflix.png',
                                      color: Colors.white)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                  child: Image.asset(
                                      'assets/partner/airbnb.png',
                                      color: Colors.white)),
                              SizedBox(
                                  child: Image.asset('assets/partner/adobe.png',
                                      color: Colors.white)),
                              SizedBox(
                                  child: Image.asset(
                                      'assets/partner/microsoft.png',
                                      color: Colors.white)),
                            ],
                          )
                        ],
                      )
                    : isMobile
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/partner/slack.png',
                                          color: Colors.white)),
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/partner/google.png',
                                          color: Colors.white)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/partner/netflix.png',
                                          color: Colors.white)),
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/partner/airbnb.png',
                                          color: Colors.white)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/partner/adobe.png',
                                          color: Colors.white)),
                                  SizedBox(
                                      child: Image.asset(
                                          'assets/partner/microsoft.png',
                                          color: Colors.white)),
                                ],
                              )
                            ],
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  child: Image.asset(
                                'assets/partner/slack.png',
                                color: Colors.white,
                              )),
                              Container(
                                  child: Image.asset(
                                'assets/partner/google.png',
                                color: Colors.white,
                              )),
                              Container(
                                  child: Image.asset(
                                'assets/partner/netflix.png',
                                color: Colors.white,
                              )),
                              Container(
                                  child: Image.asset(
                                'assets/partner/airbnb.png',
                                color: Colors.white,
                              )),
                              Container(
                                  child: Image.asset(
                                'assets/partner/adobe.png',
                                color: Colors.white,
                              )),
                              Container(
                                  child: Image.asset(
                                'assets/partner/microsoft.png',
                                color: Colors.white,
                              )),
                            ],
                          ),
              ),
              SizedBox(
                width: 1280,
                // padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(16),
                      child: isMobile
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/logo/appbar_logo.svg',
                                        height: 50,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                          'We\'re a team of experienced designers, developers, and marketers, passionate about delivering exceptional digital solutions.',
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(fontSize: 16)),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text('hello@agenone.com',
                                          style: TextStyle(fontSize: 16))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.all(16),
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Menu',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          Text(
                                            'Home',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Services',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'About Us',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Project',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Contact',
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Support',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          Text(
                                            'FAQ',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Privacy Policy',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Terms of Service',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Social Media',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black)),
                                          Text(
                                            'Linked in',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Twitter',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Instagram',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Dribbble',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          Text(
                                            'Behance',
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          : istab
                              ? Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: screenWidth * 0.8,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/logo/appbar_logo.svg',
                                            height: 50,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            child: const Text(
                                                'We\'re a team of experienced designers, developers, and marketers, passionate about delivering exceptional digital solutions.',
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(fontSize: 16)),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            'hello@agenone.com',
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: screenWidth * 0.8,
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Menu',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              Text('Home',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Services',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('About Us',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Project',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Contact',
                                                  style:
                                                      TextStyle(fontSize: 16))
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Support',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              Text('FAQ',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Privacy Policy',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Terms of Service',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Social Media',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              Text('Linked in',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Twitter',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Instagram',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Dribbble',
                                                  style:
                                                      TextStyle(fontSize: 16)),
                                              Text('Behance',
                                                  style:
                                                      TextStyle(fontSize: 16))
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: istab
                                          ? screenWidth * 0.45
                                          : isMobile
                                              ? screenWidth * 0.47
                                              : 1280 * 0.45,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/logo/appbar_logo.svg',
                                            height: 50,
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            width: istab
                                                ? screenWidth * 0.45
                                                : 1280 * 0.25,
                                            child: const Text(
                                                'We\'re a team of experienced designers, developers, and marketers, passionate about delivering exceptional digital solutions.',
                                                textAlign: TextAlign.justify,
                                                style: TextStyle(fontSize: 16)),
                                          ),
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          const Text(
                                            'hello@agenone.com',
                                            style: TextStyle(fontSize: 16),
                                          )
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: istab
                                          ? screenWidth * 0.45
                                          : isMobile
                                              ? screenWidth * 0.47
                                              : 1280 * 0.45,
                                      child: const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Menu',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              Text('Home',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Services',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('About Us',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Project',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Contact',
                                                  style:
                                                      TextStyle(fontSize: 15))
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Support',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              Text('FAQ',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Privacy Policy',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Terms Service',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Social Media',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black)),
                                              Text('Linked in',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Twitter',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Instagram',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Dribbble',
                                                  style:
                                                      TextStyle(fontSize: 15)),
                                              Text('Behance',
                                                  style:
                                                      TextStyle(fontSize: 15))
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: const Text(
                        'Copyright @ 2023 by Agenone. All rights reserved.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    )
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquis_v2/games/checkers/views/screens/home_screen/checkers_home_screen.dart';
import 'package:marquis_v2/widgets/ui_widgets.dart';
import '../../../../ludo/widgets/chevron_border.dart';
import '../../../../ludo/widgets/divider_shape.dart';

class MatchResultScreen extends StatelessWidget {
  const MatchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            double scaledHeight(double height) => (height / 717) * constraints.maxHeight;
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 7, top: 17, bottom: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Match Result', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white)),
                      GestureDetector(
                        onTap: Navigator.of(context).pop,
                        child: Container(
                          decoration: ShapeDecoration(color: Colors.white, shape: ChevronBorder()),
                          padding: const EdgeInsets.only(top: 1, left: 8, bottom: 1, right: 31),
                          child: const Text('Txh', style: TextStyle(color: Colors.black)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: scaledHeight(10),
                  decoration: const ShapeDecoration(color: Color(0xFFF3B46E), shape: DividerShape(Color(0xFFF3B46E))),
                ),
                verticalSpace(30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    height: 34,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF814809),
                            Colors.black
                          ]
                      )
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                        Text('WINNER',
                            style: TextStyle(color: Colors.white, fontSize: 12)),
                          horizontalSpace(4),
                          SizedBox(
                            width: 60,
                            child: Text('YIXUAN',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
                          ),
                          Spacer(),
                          Text(
                            ' + ',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFFFFE500),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          verticalSpace(8),
                          SvgPicture.asset("assets/svg/STRK_logo.svg", width: 19),
                          horizontalSpace(4),
                          Text(
                            '400',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFFFFE500),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          horizontalSpace(4),
                          Text(
                            ' + ',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFF00ECFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          horizontalSpace(4),
                          Image.asset('assets/images/member.png'),
                          horizontalSpace(4),
                          Text(
                            '400 EXP',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFFF3B46E),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                verticalSpace(15),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    height: 34,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Text('PLAYER 2',
                              style: TextStyle(color: Color(0xFF696969), fontSize: 12)),
                          horizontalSpace(8),
                          SizedBox(
                            width: 60,
                            child: Text('CARLOS',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700)),
                          ),
                          Spacer(),
                          Text(
                            ' - ',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFFFF2E00),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          verticalSpace(8),
                          SvgPicture.asset("assets/svg/STRK_logo.svg", width: 19),
                          horizontalSpace(4),
                          Text(
                            '100',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFFFF2E00),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          horizontalSpace(4),
                          Text(
                            ' + ',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFF00ECFF),
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          horizontalSpace(4),
                          Image.asset('assets/images/member.png'),
                          horizontalSpace(4),
                          Text(
                            '20 EXP',
                            style: GoogleFonts.orbitron(
                              color: Color(0xFFF3B46E),
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: Navigator.of(context).pop,
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                        foregroundColor: const Color(0xFFF3B46E),
                        side: const BorderSide(
                          color: Color(0xFFF3B46E),
                        ),
                      ),
                      child: Text(
                        'Share result',
                        style: GoogleFonts.montserrat(
                          color: Color(0xFFF3B46E),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 32, top: 8),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CheckersHomeScreen(),
                        ),
                      );
                    },
                    child: Container(
                      height: 43,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF3B46E),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Text(
                          'Back to Menu',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

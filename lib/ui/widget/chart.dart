import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:fudge_financial/ui/shared/helpers.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: defaultPadding + rightPadding,
      child: LineChart(
        LineChartData(
          lineTouchData: LineTouchData(
            enabled: true,
            touchTooltipData: LineTouchTooltipData(
              tooltipBgColor: Colors.white,
              
              getTooltipItems: (spots) {
                return spots
                    .map(
                      (spot) => LineTooltipItem(
                        spot.y.toString(),
                        TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: '  additional text',
                            style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    )
                    .toList();
              },
            ),
          ),
          gridData: FlGridData(
            show: false,
          ),
          minX: 0,
          minY: 0,
          maxX: 5,
          maxY: 500,
          titlesData: FlTitlesData(
            show: true,
            topTitles: SideTitles(showTitles: false),
            rightTitles: SideTitles(showTitles: false),
            leftTitles: SideTitles(
              showTitles: true,
              checkToShowTitle: (_, __, ___, ____, _____) => true,
              interval: 250,
              margin: 10,
              getTextStyles: (_, value) => TextStyle(color: Color(0xFF7C828A), fontSize: 10),
            ),
            bottomTitles: SideTitles(
              showTitles: true,
              margin: 10,
              checkToShowTitle: (double minValue, double maxValue, SideTitles sideTitles, double appliedInterval, double value) {
                return true;
              },
              getTextStyles: (_, value) => TextStyle(color: Color(0xFF7C828A), fontSize: 10),
              getTitles: (value) {
                switch (value.toInt()) {
                  case 0:
                    return 'JAN';
                  case 1:
                    return 'FEB';
                  case 2:
                    return 'MAR';
                  case 3:
                    return 'APR';
                  case 4:
                    return 'MAY';
                  case 5:
                    return 'JUN';
                  case 6:
                    return 'JUL';
                  case 7:
                    return 'AUG';
                  case 8:
                    return 'SEP';
                  case 9:
                    return 'OCT';
                  case 10:
                    return 'NOV';
                  case 11:
                    return 'DEC';
                  default:
                    return '';
                }
              },
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Colors.white,
                width: 1,
              ),
            ),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 270),
                FlSpot(1, 250),
                FlSpot(2, 300),
                FlSpot(3, 450),
                FlSpot(4, 210),
                FlSpot(5, 150),
              ],
              isCurved: true,
              preventCurveOverShooting: true,
              colors: [
                Color(0xFF147AD6),
              ],
              barWidth: 1,
              isStrokeCapRound: true,
              dotData: FlDotData(
                show: true,
                getDotPainter: (_, __, ___, ____) => FlDotCirclePainter(
                  radius: 3,
                  strokeWidth: 0,
                  color: Color(0xFF147AD6),
                ),
                checkToShowDot: (spot, _) => spot.y == 300,
              ),
              belowBarData: BarAreaData(
                show: true,
                gradientFrom: Offset(1, 1),
                gradientTo: Offset(1, 0),
                spotsLine: BarAreaSpotsLine(
                  show: true,
                  flLineStyle: FlLine(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                ),
                colors: [
                  Color(0xFF147AD6).withOpacity(0.2),
                  Color(0xFF147AD6).withOpacity(0.1),
                ],
              ),
              aboveBarData: BarAreaData(
                show: true,
                gradientFrom: Offset(1, 1),
                gradientTo: Offset(1, 0),
                spotsLine: BarAreaSpotsLine(
                  show: true,
                  flLineStyle: FlLine(
                    color: Colors.white,
                    strokeWidth: 2,
                  ),
                ),
                colors: [
                  Color(0xFF147AD6).withOpacity(0.2),
                  Color(0xFF147AD6).withOpacity(0.1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

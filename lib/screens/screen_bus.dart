import 'package:flutter/material.dart';


// void main() {
//   runApp(SeatReservationScreen());
// }

class SeatReservationScreen extends StatefulWidget {
  @override
  _SeatReservationScreenState createState() => _SeatReservationScreenState();
}

class _SeatReservationScreenState extends State<SeatReservationScreen> {
  List<int> selectedSeats = []; // 선택된 좌석 리스트
  final int numberOfSeats = 45; // 총 좌석 수
  int rows = 10; // 좌석 배치를 위한 행 수
  int columns = 4; // 좌석 배치를 위한 열 수

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '45인승 버스 좌석 예약',
      home: Scaffold(
        appBar: AppBar(
          title: Text('45인승 버스 좌석 예약'),
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
          ),
          itemBuilder: (BuildContext context, int index) {
            final seatNumber = index + 1;
            bool isReserved = selectedSeats.contains(seatNumber);
            return GestureDetector(
              onTap: () {
                if (!isReserved) {
                  setState(() {
                    selectedSeats.add(seatNumber);
                  });
                  _showSeatSelectionDialog(seatNumber);
                }
              },
              child: Container(
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: isReserved ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Center(
                  child: Text(
                    '$seatNumber',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: numberOfSeats,
        ),
      ),
    );
  }

  // 좌석 선택 다이얼로그 표시
  void _showSeatSelectionDialog(int seatNumber) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('좌석 선택'),
          content: Text('$seatNumber 번 좌석이 선택되었습니다.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('확인'),
            ),
          ],
        );
      },
    );
  }
}

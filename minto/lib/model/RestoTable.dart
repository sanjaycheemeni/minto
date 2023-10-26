class RestoTable {
  double? tableId;
  // total seat 8,
  double? totalSeat = 8;

  // deafult case : all seats are active
  List<Seat> seats = [
    Seat(id: 1),
    Seat(id: 2),
    Seat(id: 3),
    Seat(id: 4),
    Seat(id: 5),
    Seat(id: 6),
    Seat(id: 7),
    Seat(id: 8),
  ];

  RestoTable({required this.tableId});
}

class Seat {
  double? id;
  bool isActive = true;
  Seat({required this.id});
}

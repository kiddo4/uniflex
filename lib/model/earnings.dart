class Earnings {
  final String text;
  final String amount;

  Earnings({ required this.text, required this.amount}); // 
}

List<Earnings> earnings = [
  Earnings(text: 'Monday', amount: '30.00'),
  Earnings(text: 'Tuesday', amount: '20.00'),
  Earnings(text: 'Wednesday', amount: '10.00')
];
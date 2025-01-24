import 'dart:math';

void main() {
  // Daftar quotes
  List<String> quotes = [
    "The best way to predict the future is to create it. - Peter Drucker",
    "Success is not the key to happiness. Happiness is the key to success. - Albert Schweitzer",
    "Don't watch the clock; do what it does. Keep going. - Sam Levenson",
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Believe you can and you're halfway there. - Theodore Roosevelt",
    "Hardships often prepare ordinary people for an extraordinary destiny. - C.S. Lewis",
    "Success usually comes to those who are too busy to be looking for it. - Henry David Thoreau",
    "Opportunities don't happen. You create them. - Chris Grosser",
    "It always seems impossible until it is done. - Nelson Mandela",
    "Dream big and dare to fail. - Norman Vaughan"
  ];

  // Membuat objek Random
  Random random = Random();

  // Memilih quote secara acak
  String randomQuote = quotes[random.nextInt(quotes.length)];

  // Menampilkan quote
  print("Quote of the day:");
  print(randomQuote);
}

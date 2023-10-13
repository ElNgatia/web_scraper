import 'package:web_scraper/web_scraper.dart' as web_scraper;


void main() async {
  print('___Web Scraper___');
  final baseUrl = 'https://beautytargetkenya.com/collections/all';
  // await web_scraper.prisma.$connect();
  final int totalPages = 10;
  for (int page = 1; page < totalPages+1; page++) {
    final pageUrl = '$baseUrl?page=$page';
    await web_scraper.fetchAndScrapWebPage(pageUrl, page);
    if (page == totalPages) {
      web_scraper.prisma.$disconnect();
      print('Scraping done!');
    }
  }
}

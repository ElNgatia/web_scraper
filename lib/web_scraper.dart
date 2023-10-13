import 'package:html/parser.dart' show parse;
import 'package:http/http.dart' as http;
import 'package:web_scraper/env/env.dart';
import 'package:web_scraper/src/generated/prisma/prisma_client.dart';
import 'package:orm/logger.dart';

final prisma = PrismaClient(
  stdout: Event.values,
  datasources: Datasources(
    db: Env.databaseUrl,
  ),
);

Future<void> fetchAndScrapWebPage(String url, int currentPage) {
  return http.get(Uri.parse(url)).then((response) {
    if (response.statusCode == 200) {
      extractProductInfo(response.body, currentPage);
    } else {
      print('Error getting response: ${response.statusCode}');
    }
  }).catchError((error) {
    print('Error getting response: $error');
  });
}

void extractProductInfo(String html, int currentPage) async {
  final document = parse(html);
  // print('Page: $currentPage');

  final productSections = document.querySelectorAll(
      '.product-grid-container.scroll-trigger.animate--slide-in');

  for (var productSection in productSections) {
    final productCards = productSection.querySelectorAll('.card__information');

    for (var productCard in productCards) {
      final productNameElement = productCard.querySelector('.card__heading.h5');
      final productPrice = productCard.querySelector('.price__container');

      if (productNameElement != null && productPrice != null) {
        final regularPrice = productPrice
            .querySelector('.price-item.price-item--regular')
            ?.text
            .trim();

        await prisma.products.upsert(
          data: ProductsCreateInput(
            name: productNameElement.text,
            price: double.parse(
              regularPrice!.replaceAll(RegExp(r'[^\d.]'), ''),
            ),
          ),
          create: ProductsCreateInput(
              name: productNameElement.text,
              price:
                  double.parse(regularPrice.replaceAll(RegExp(r'[^\d.]'), ''))),
          update: ProductsUpdateInput(),
          where: ProductsWhereUniqueInput(
            name: productNameElement.text,
          ),
        );

        //  prisma.products.deleteMany;
        // print('Product Name: ${productNameElement.text}');
        // print('Product Price: $regularPrice');
        print('-------------------');
        print('Scraped data from page $currentPage');
      } else {
        print('------------------------------------------');
      }
    }
  }
  prisma.$disconnect();
}

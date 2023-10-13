# Project Name: Beauty Product Web Scraper

# Table of Contents
1. [Project Description](#project-description)
2. [How to Run Program](#how-to-run-program)
3. [Files Used](#files-used)
4. [Project Status](#project-status)
5. [Authors](#authors)
6. [License](#license)

## Project Description

Problem: The project aims to collect and organize data about beauty products, specifically their names and prices, from the website beautytargetkenya.com. This data is valuable for various purposes, such as price comparison, market analysis, and trend tracking.

Purpose: The primary purpose of the project is to scrape data from beautytargetkenya.com to provide insights into beauty product pricing and availability. It offers a structured dataset that can be used for various data analysis and business intelligence tasks.

Motivation: The project was undertaken for several reasons:

Market Analysis: To understand pricing trends and market dynamics for beauty products in Kenya.
Competitive Analysis: To monitor and analyze competitors' product offerings and prices.
Consumer Insights: To provide consumers with data to make informed purchasing decisions.
Data Enthusiasts: To cater to data enthusiasts, developers, and researchers who might find value in the dataset for their projects.

By scraping and organizing this data, the project aims to offer valuable insights into the beauty product market in Kenya and serve as a resource for anyone interested in this domain.

## How to Run Program

To run this web scraper, make sure you have the following prerequisites installed on your system:

- [Dart](https://dart.dev/get-dart)
- [Prisma for Dart](https://prisma.pub/docs/getting-started.html)
- [Cockroachdb](https://cockroachlabs.cloud/clusters)

Follow these steps:

1. Clone this repository to your local machine:

```bash
git clone 
cd beauty-product-web-scraper
```
2. Install the dependencies:

```bash
dart pub get
```
3. Configure the database connection:
Edit the .env file to include your database connection string. For example:

```bash
DATABASE_URL="postgresql://user:password@localhost:5432/beauty_product_scraper?schema=public"
```

4. Run the program:

Generate the required files:

```bash
dart run build_runner build
```

Run the program:
```bash
dart run bin/web_scraper.dart
```


## Files Used
- `bin/web_scraper.dart`: This is the main Dart script that initiates the web scraping process. It controls the flow of the scraper and communicates with the Prisma client to save data to the database.

- `.env`: The environment configuration file containing your database connection details. You should edit this file to set up your database connection.

- `pubspec.yaml`: The Dart package configuration file. It lists all the dependencies required for the project.

- `web_scraper/`: This directory contains the code for the web scraper, including functions for fetching and parsing web pages.

- `prisma/`: This directory includes the Prisma schema and migration files for database setup and management.

- `README.md`: The documentation you are currently reading, providing information on how to run the project and its purpose.

- `.gitignore`: A file that specifies which files or directories should be ignored by Git when tracking changes.


These are the main files and directories used in this project. You can explore them to gain a better understanding of the project's structure and functionality.


## Project Status

The project is currently in development. The web scraper is functional and can be used to scrape data from [Beauty Target Kenya](https://beautytargetkenya.com/). However, it is still a work in progress, and there are plans to add more features and functionality in the future.

## Authors

- [Elvis Ngatia](https://github.com/ElNgatia) - Sole contributor and developer of the project.

## License

This project is licensed under the [MIT License](LICENSE) - see the [LICENSE](LICENSE) file for details.
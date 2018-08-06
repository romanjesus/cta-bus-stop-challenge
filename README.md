# CTA Bus Stop Data - October 2012

## Description

This project is an attempt to utilize open source data to create a web app and simple visualization using Ruby on Rails and Javascript. The web app includes a live visualization of the dataset using the [jquery-datatables-rails](https://github.com/rweng/jquery-datatables-rails) gem as well as bar charts using the [chartkick](https://github.com/ankane/chartkick) gem. The home page data table includes funcitonality such as pagination, sorting, and fuzzy search.

# Data

The datasets used can be found at the links below. The second dataset is used to create a join table so that each bus stop has a list of route names associated with it rather than only route numbers.

* [CTA Ridership Avg Weekday Bus Stop Boardings](https://data.cityofchicago.org/Transportation/CTA-Ridership-Avg-Weekday-Bus-Stop-Boardings-in-Oc/mq3i-nnqe)
* [CTA Ridership Bus Routes](https://data.cityofchicago.org/Transportation/CTA-Ridership-Bus-Routes-Monthly-Day-Type-Averages/bynn-gwxy)

## Data Clean Up

After analyzing the data, I realized that there was a bit of cleanup involved to get it to a point where it would be useful. I came up with the schema below and utilized excel's VBA to create a join table csv between the bus stop and routes data. Final datasets can be found in the [csv_data directory](https://github.com/romanjesus/cta-bus-stop-challenge/tree/master/db/csv_data).

### Schema

![Alt](https://raw.githubusercontent.com/romanjesus/cta-bus-stop-challenge/master/db/Cta-bustop-schema.png "Title")

## Live Application

The web app is currently deployed on Heroku. [Feel free to take a look!](https://ctabusroutesoct2012.herokuapp.com/)

# SQL-import-export-countires
SQL challenge import &amp; export countires
in this task we have 2 DB tables (companies , trades) as below :
CREATE TABLE `companies` (
  `name` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  UNIQUE KEY `name` (`name`)
)

CREATE TABLE `trades` (
  `id` int NOT NULL,
  `seller` varchar(30) NOT NULL,
  `buyer` varchar(30) NOT NULL,
  `value` int NOT NULL,
  UNIQUE KEY `id` (`id`)
)

the request is to return total exports and imports for each country where exports is total value for sellers and improt it total value for buyers
and if some country have no selles or buys it is also have to be displayed.
EX:
'Mathlands', '30', '180'
'Nothingland', '0', '0'
'Underwater Kingdom', '90', '0'
'Wonderland', '100', '40'


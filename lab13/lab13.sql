.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet
  FROM students
  WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song
  FROM students
  WHERE color = 'blue' AND pet = 'dog';

CREATE TABLE smallest_int_having AS
  SELECT time, smallest
  FROM students
  GROUP BY smallest
  HAVING COUNT(*) = 1;

CREATE TABLE matchmaker AS
  SELECT a.pet AS pet, a.song AS song, a.color AS color, b.color AS color
  FROM students AS a, students AS b
  WHERE a.pet = b.pet AND a.song = b.song And a.time < b.time;

CREATE TABLE sevens AS
  SELECT b.seven
  FROM numbers AS a, students AS b
  WHERE b.number = 7 AND a.'7' = 'True' AND a.time = b.time;

CREATE TABLE average_prices AS
  SELECT category, AVG(MSRP) AS average_price
  FROM products
  GROUP BY category;

CREATE TABLE lowest_prices AS
  SELECT store, item, MIN(price) AS price
  FROM inventory
  GROUP BY item;

CREATE TABLE sorted AS
  SELECT name, Min(MSRP/rating)
  FROM products
  GROUP BY category;

CREATE TABLE shopping_list AS
  SELECT a.name, b.store
  From sorted AS a, lowest_prices AS b
  WHERE a.name = b.item;

CREATE TABLE total_bandwidth AS
  SELECT SUM(b.Mbs)
  FROM shopping_list AS a, stores AS b
  WHERE a.store = b.store;

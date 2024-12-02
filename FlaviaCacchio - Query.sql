#ESAME SQL 01/12/2024
#Flavia Cacchio


-- Create Database
CREATE DATABASE IF NOT EXISTS ToysGroup;
USE ToysGroup;

-- Table: Product
DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    FinishedGoodsFlag TINYINT(1) NOT NULL,
    ListPrice DECIMAL(10 , 2 )
);

-- Table: Region
DROP TABLE IF EXISTS Region;
CREATE TABLE Region (
    GeographyID INT AUTO_INCREMENT PRIMARY KEY,
    City VARCHAR(50) NOT NULL,
    Region VARCHAR(50) NOT NULL,
    Country VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS Sales;
CREATE TABLE Sales (
    SalesID INT,
    SalesLine TINYINT NOT NULL,
    ProductID INT NOT NULL,
    GeographyID INT NOT NULL,
    UnitPrice DECIMAL(10 , 2 ) NOT NULL,
    SalesDate DATE NOT NULL,
    QuantitySold INT NOT NULL,
    SalesAmount DECIMAL(10 , 2 ) NOT NULL,
    PRIMARY KEY (SalesID , SalesLine),
    FOREIGN KEY (ProductID)
        REFERENCES Product (ProductID),
    FOREIGN KEY (GeographyID)
        REFERENCES Region (GeographyID)
);

-- Insert Data
INSERT INTO Product VALUES
(1, 'Super Car Racer', 'Vehicles', 1, 199.99),
(2, 'Dollhouse Deluxe', 'Dolls', 1, 249.99),
(3, 'Construction Set XL', 'Building', 1, 349.99),
(4, 'Remote Control Drone', 'Electronics', 1, 299.99),
(5, 'Plush Teddy Bear', 'Stuffed Toys', 1, 149.99),
(6, 'Puzzle 1000 Pieces', 'Puzzles', 1, 499.99),
(7, 'Action Figure X', 'Action Figures', 1, 119.99),
(8, 'Lego Pirate Ship', 'Building', 1, 89.99),
(9, 'Electric Train Set', 'Vehicles', 1, 79.99),
(10, 'Magic Tricks Kit', 'Educational', 1, 99.99),
(11, 'Board Game Classic', 'Board Games', 1, 199.99),
(12, 'Science Lab Kit', 'Educational', 1, 249.99),
(13, 'RC Monster Truck', 'Vehicles', 1, 349.99),
(14, 'Interactive Robot', 'Electronics', 1, 299.99),
(15, 'Baby Doll & Stroller', 'Dolls', 1, 149.99),
(16, 'Junior Guitar', 'Musical Toys', 1, 499.99),
(17, 'Art & Craft Kit', 'Creative Toys', 1, 119.99),
(18, 'Space Exploration Set', 'Educational', 1, 89.99),
(19, 'Play Kitchen Set', 'Role Play', 1, 79.99),
(20, 'Soccer Ball', 'Sports', 1, 99.99),
(21, 'Foam Dart Gun', 'Action Figures', 1, 199.99),
(22, 'Rubik\'s Cube', 'Puzzles', 1, 249.99),
(23, 'Skateboard Pro', 'Sports', 1, 349.99),
(24, 'Electric Keyboard', 'Musical Toys', 1, 299.99),
(25, 'Fishing Game', 'Board Games', 1, 149.99),
(26, 'Fantasy Card Game', 'Card Games', 1, 240.99),
(27, 'Mini RC Helicopter', 'Vehicles', 1, 169.99),
(28, 'Glow-in-the-Dark Stars', 'Creative Toys', 1, 129.99),
(29, 'Chess Set', 'Board Games', 1, 190.99),
(30, 'Basketball Hoop Set', 'Sports', 1, 189.99),
(31, 'Robot Arm Kit', 'Electronics', 0, 169.99),
(32, 'DIY Puzzle Kit', 'Puzzles', 0, 199.99),
(33, 'Unpainted Model Car', 'Building', 0, 249.99),
(34, 'Unfinished Doll', 'Dolls', 0, 149.99),
(35, 'Train Tracks Only', 'Vehicles', 0, 299.99),
(36, 'Unassembled Drone Kit', 'Electronics', 0, 159.99),
(37, 'Art Set (No Paint)', 'Creative Toys', 0, 459.99),
(38, 'RC Car without Battery', 'Vehicles', 0, 139.99),
(39, 'Uncut Card Deck', 'Card Games', 0, 142.99),
(40, 'Board Game (No Pieces)', 'Board Games', 0, 129.99);


INSERT INTO Region (City, Region, Country)
VALUES
('New York', 'Northeast', 'USA'),
('Los Angeles', 'West Coast', 'USA'),
('Chicago', 'Midwest', 'USA'),
('Houston', 'Southwest', 'USA'),
('Phoenix', 'Southwest', 'USA'),
('Philadelphia', 'Northeast', 'USA'),
('San Antonio', 'South', 'USA'),
('San Diego', 'West Coast', 'USA'),
('Dallas', 'Southwest', 'USA'),
('San Jose', 'West Coast', 'USA'),
('London', 'England', 'UK'),
('Manchester', 'England', 'UK'),
('Liverpool', 'England', 'UK'),
('Birmingham', 'England', 'UK'),
('Glasgow', 'Scotland', 'UK'),
('Edinburgh', 'Scotland', 'UK'),
('Cardiff', 'Wales', 'UK'),
('Newcastle', 'England', 'UK'),
('Leeds', 'England', 'UK'),
('Sheffield', 'England', 'UK'),
('Paris', 'Île-de-France', 'France'),
('Marseille', 'Provence-Alpes-Côte d\'Azur', 'France'),
('Lyon', 'Auvergne-Rhône-Alpes', 'France'),
('Toulouse', 'Occitanie', 'France'),
('Nice', 'Provence-Alpes-Côte d\'Azur', 'France'),
('Berlin', 'Berlin', 'Germany'),
('Munich', 'Bavaria', 'Germany'),
('Frankfurt', 'Hesse', 'Germany'),
('Hamburg', 'Hamburg', 'Germany'),
('Stuttgart', 'Baden-Württemberg', 'Germany'),
('Sydney', 'New South Wales', 'Australia'),
('Melbourne', 'Victoria', 'Australia'),
('Brisbane', 'Queensland', 'Australia'),
('Perth', 'Western Australia', 'Australia'),
('Adelaide', 'South Australia', 'Australia'),
('Tokyo', 'Kanto', 'Japan'),
('Osaka', 'Kinki', 'Japan'),
('Kyoto', 'Kinki', 'Japan'),
('Nagoya', 'Aichi', 'Japan'),
('Sapporo', 'Hokkaido', 'Japan'),
('São Paulo', 'São Paulo', 'Brazil'),
('Rio de Janeiro', 'Rio de Janeiro', 'Brazil'),
('Brasília', 'Distrito Federal', 'Brazil'),
('Salvador', 'Bahia', 'Brazil'),
('Fortaleza', 'Ceará', 'Brazil'),
('Toronto', 'Ontario', 'Canada'),
('Vancouver', 'British Columbia', 'Canada'),
('Montreal', 'Quebec', 'Canada'),
('Ottawa', 'Ontario', 'Canada'),
('Calgary', 'Alberta', 'Canada'),
('Moscow', 'Central', 'Russia'),
('Saint Petersburg', 'Northwestern', 'Russia'),
('Novosibirsk', 'Siberian', 'Russia'),
('Yekaterinburg', 'Ural', 'Russia'),
('Nizhny Novgorod', 'Volga', 'Russia'),
('Beijing', 'Beijing', 'China'),
('Shanghai', 'Shanghai', 'China'),
('Hong Kong', 'Hong Kong', 'China'),
('Guangzhou', 'Guangdong', 'China'),
('Shenzhen', 'Guangdong', 'China'),
('Cairo', 'Cairo', 'Egypt'),
('Alexandria', 'Alexandria', 'Egypt'),
('Giza', 'Giza', 'Egypt'),
('Luxor', 'Luxor', 'Egypt'),
('Sharm El Sheikh', 'South Sinai', 'Egypt'),
('Dubai', 'Dubai', 'UAE'),
('Abu Dhabi', 'Abu Dhabi', 'UAE'),
('Sharjah', 'Sharjah', 'UAE'),
('Riyadh', 'Riyadh', 'Saudi Arabia'),
('Jeddah', 'Makkah', 'Saudi Arabia'),
('Dammam', 'Eastern Province', 'Saudi Arabia'),
('Kuwait City', 'Capital Governorate', 'Kuwait'),
('Doha', 'Doha', 'Qatar'),
('Manama', 'Capital', 'Bahrain'),
('Muscat', 'Muscat', 'Oman'),
('Tel Aviv', 'Tel Aviv District', 'Israel'),
('Jerusalem', 'Jerusalem District', 'Israel'),
('Amman', 'Amman', 'Jordan'),
('Beirut', 'Beirut', 'Lebanon'),
('Damascus', 'Damascus', 'Syria'),
('Bucharest', 'București', 'Romania'),
('Sofia', 'Sofia', 'Bulgaria'),
('Belgrade', 'Belgrade', 'Serbia'),
('Zagreb', 'Zagreb', 'Croatia'),
('Athens', 'Attica', 'Greece'),
('Stockholm', 'Stockholm County', 'Sweden'),
('Oslo', 'Oslo', 'Norway'),
('Helsinki', 'Uusimaa', 'Finland'),
('Copenhagen', 'Capital Region', 'Denmark'),
('Reykjavik', 'Capital Region', 'Iceland'),
('Buenos Aires', 'Buenos Aires Province', 'Argentina'),
('Montevideo', 'Montevideo', 'Uruguay'),
('Lima', 'Lima', 'Peru'),
('Santiago', 'Santiago Metropolitan', 'Chile'),
('Bogotá', 'Bogotá D.C.', 'Colombia'),
('Caracas', 'Capital District', 'Venezuela'),
('Lagos', 'Lagos', 'Nigeria'),
('Abuja', 'Federal Capital Territory', 'Nigeria'),
('Nairobi', 'Nairobi', 'Kenya'),
('Mombasa', 'Coast', 'Kenya'),
('Cape Town', 'Western Cape', 'South Africa'),
('Johannesburg', 'Gauteng', 'South Africa');


INSERT INTO Sales VALUES
(1,1,1,1,199.99,'2022-01-10',10,1999.9),
(1,2,2,1,249.99,'2022-01-10',5,1249.95),
(2,1,3,2,349.99,'2022-02-05',7,2449.93),
(2,2,4,2,299.99,'2022-02-05',6,1799.94),
(3,1,5,3,149.99,'2022-03-10',8,1199.92),
(3,2,6,3,499.99,'2022-03-10',4,1999.96),
(4,1,7,4,119.99,'2022-04-01',15,1799.85),
(4,2,8,4,89.99,'2022-04-01',12,1079.88),
(5,1,9,5,79.99,'2022-05-20',9,719.91),
(5,2,10,5,99.99,'2022-05-20',11,1099.89),
(6,1,11,6,199.99,'2022-06-15',10,1999.9),
(6,2,12,6,249.99,'2022-06-15',5,1249.95),
(7,1,13,7,349.99,'2022-07-10',7,2449.93),
(7,2,14,7,299.99,'2022-07-10',6,1799.94),
(8,1,15,8,149.99,'2022-08-20',8,1199.92),
(8,2,16,8,499.99,'2022-08-20',4,1999.96),
(9,1,17,9,119.99,'2022-09-10',15,1799.85),
(9,2,18,9,89.99,'2022-09-10',12,1079.88),
(10,1,19,10,79.99,'2022-10-05',9,719.91),
(10,2,20,10,99.99,'2022-10-05',11,1099.89),
(11,1,21,11,199.99,'2021-01-10',10,1999.9),
(11,2,22,11,249.99,'2021-01-10',5,1249.95),
(12,1,23,12,349.99,'2021-02-15',7,2449.93),
(12,2,24,12,299.99,'2021-02-15',6,1799.94),
(13,1,25,13,149.99,'2021-03-20',8,1199.92),
(13,2,1,13,199.99,'2021-03-20',4,799.96),
(14,1,2,14,249.99,'2021-04-25',15,3749.85),
(14,2,3,14,349.99,'2021-04-25',12,4199.88),
(15,1,4,15,299.99,'2021-05-10',9,2699.91),
(15,2,5,15,149.99,'2021-05-10',11,1649.89),
(16,1,1,16,199.99,'2021-06-10',10,1999.9),
(16,2,2,16,249.99,'2021-06-10',5,1249.95),
(17,1,3,17,349.99,'2021-07-15',7,2449.93),
(17,2,4,17,299.99,'2021-07-15',6,1799.94),
(18,1,5,18,149.99,'2021-08-20',8,1199.92),
(18,2,6,18,499.99,'2021-08-20',4,1999.96),
(19,1,7,19,119.99,'2021-09-01',15,1799.85),
(19,2,8,19,89.99,'2021-09-01',12,1079.88),
(20,1,9,20,79.99,'2021-10-10',9,719.91),
(20,2,10,20,99.99,'2021-10-10',11,1099.89),
(21,1,11,21,199.99,'2021-11-15',10,1999.9),
(21,2,12,21,249.99,'2021-11-15',5,1249.95),
(22,1,13,22,349.99,'2021-12-20',7,2449.93),
(22,2,14,22,299.99,'2021-12-20',6,1799.94),
(23,1,15,23,149.99,'2022-01-01',8,1199.92),
(23,2,16,23,499.99,'2022-01-01',4,1999.96),
(24,1,17,24,119.99,'2022-02-01',15,1799.85),
(24,2,18,24,89.99,'2022-02-01',12,1079.88),
(25,1,19,25,79.99,'2022-03-05',9,719.91),
(25,2,20,25,99.99,'2022-03-05',11,1099.89),
(26,1,21,26,199.99,'2022-04-01',10,1999.9),
(26,2,22,26,249.99,'2022-04-01',5,1249.95),
(27,1,23,27,349.99,'2022-05-15',7,2449.93),
(27,2,24,27,299.99,'2022-05-15',6,1799.94),
(28,1,25,28,149.99,'2022-06-20',8,1199.92),
(28,2,1,28,199.99,'2022-06-20',4,799.96),
(29,1,2,29,249.99,'2022-07-01',15,3749.85),
(29,2,3,29,349.99,'2022-07-01',12,4199.88),
(30,1,4,30,299.99,'2022-08-05',9,2699.91),
(30,2,5,30,149.99,'2022-08-05',11,1649.89),
(31,1,1,31,199.99,'2022-09-10',10,1999.9),
(31,2,2,31,249.99,'2022-09-10',5,1249.95),
(32,1,3,32,349.99,'2022-10-15',7,2449.93),
(32,2,4,32,299.99,'2022-10-15',6,1799.94),
(33,1,5,33,149.99,'2022-11-20',8,1199.92),
(33,2,6,33,499.99,'2022-11-20',4,1999.96),
(34,1,7,34,119.99,'2022-12-01',15,1799.85),
(34,2,8,34,89.99,'2022-12-01',12,1079.88),
(35,1,9,35,79.99,'2023-01-01',9,719.91),
(36,1,10,36,99.99,'2023-02-05',10,999.9),
(36,2,11,36,199.99,'2023-02-05',5,999.95),
(37,1,12,37,249.99,'2023-03-10',7,1749.93),
(37,2,13,37,349.99,'2023-03-10',6,2099.94),
(38,1,14,38,299.99,'2023-04-15',8,2399.92),
(38,2,15,38,149.99,'2023-04-15',4,599.96),
(39,1,16,39,499.99,'2023-05-01',15,7499.85),
(39,2,17,39,119.99,'2023-05-01',12,1439.88),
(40,1,18,40,89.99,'2023-06-10',9,809.91),
(40,2,19,40,79.99,'2023-06-10',11,879.89),
(41,1,20,41,99.99,'2023-07-20',10,999.9),
(41,2,21,41,199.99,'2023-07-20',5,999.95),
(42,1,22,42,249.99,'2023-08-25',7,1749.93),
(42,2,23,42,349.99,'2023-08-25',6,2099.94),
(43,1,24,43,299.99,'2023-09-15',8,2399.92),
(43,2,25,43,149.99,'2023-09-15',4,599.96),
(44,1,1,44,199.99,'2023-10-10',15,2999.85),
(44,2,2,44,249.99,'2023-10-10',12,2999.88),
(45,1,3,45,349.99,'2023-11-01',9,3149.91),
(45,2,4,45,299.99,'2023-11-01',11,3299.89),
(46,1,5,46,149.99,'2023-12-10',10,1499.9),
(46,2,1,46,199.99,'2023-12-10',5,999.95),
(47,1,2,47,249.99,'2024-01-15',7,1749.93),
(47,2,3,47,349.99,'2024-01-15',6,2099.94),
(48,1,4,48,299.99,'2024-02-20',8,2399.92),
(48,2,5,48,149.99,'2024-02-20',4,599.96),
(49,1,6,49,499.99,'2024-03-01',15,7499.85),
(49,2,7,49,119.99,'2024-03-01',12,1439.88),
(50,1,8,50,89.99,'2024-04-15',9,809.91),
(50,2,9,50,79.99,'2024-04-15',11,879.89),
(51,1,10,51,99.99,'2024-05-05',10,999.9),
(51,2,11,51,199.99,'2024-05-05',5,999.95),
(52,1,12,52,249.99,'2024-06-10',7,1749.93),
(52,2,13,52,349.99,'2024-06-10',6,2099.94),
(53,1,14,53,299.99,'2024-07-20',8,2399.92),
(53,2,15,53,149.99,'2024-07-20',4,599.96),
(54,1,16,54,499.99,'2024-08-01',15,7499.85),
(54,2,17,54,119.99,'2024-08-01',12,1439.88),
(55,1,18,55,89.99,'2024-09-10',9,809.91),
(55,2,19,55,79.99,'2024-09-10',11,879.89),
(56,1,20,56,99.99,'2024-10-01',10,999.9),
(56,2,21,56,199.99,'2024-10-01',5,999.95),
(57,1,22,57,249.99,'2024-11-15',7,1749.93),
(57,2,23,57,349.99,'2024-11-15',6,2099.94),
(58,1,24,58,299.99,'2024-12-05',8,2399.92),
(58,2,25,58,149.99,'2024-12-05',4,599.96),
(59,1,1,59,199.99,'2024-12-25',15,2999.85),
(59,2,2,59,249.99,'2024-12-25',12,2999.88),
(60,1,3,60,349.99,'2023-01-15',9,3149.91),
(60,2,4,60,299.99,'2023-01-15',11,3299.89),
(61,1,5,61,149.99,'2023-02-10',10,1499.9),
(61,2,1,61,199.99,'2023-02-10',5,999.95),
(62,1,2,62,249.99,'2023-03-05',7,1749.93),
(62,2,3,62,349.99,'2023-03-05',6,2099.94),
(63,1,4,63,299.99,'2023-04-15',8,2399.92),
(63,2,5,63,149.99,'2023-04-15',4,599.96),
(64,1,6,64,499.99,'2023-05-20',15,7499.85),
(64,2,7,64,119.99,'2023-05-20',12,1439.88),
(65,1,8,65,89.99,'2023-06-10',9,809.91),
(65,2,9,65,79.99,'2023-06-10',11,879.89),
(66,1,10,66,99.99,'2023-07-15',10,999.9),
(66,2,11,66,199.99,'2023-07-15',5,999.95),
(67,1,12,67,249.99,'2023-08-01',7,1749.93),
(67,2,13,67,349.99,'2023-08-01',6,2099.94),
(68,1,14,68,299.99,'2023-09-10',8,2399.92),
(68,2,15,68,149.99,'2023-09-10',4,599.96),
(69,1,16,69,499.99,'2023-10-01',15,7499.85),
(69,2,17,69,119.99,'2023-10-01',12,1439.88),
(70,1,18,70,89.99,'2023-11-10',9,809.91),
(80,1,19,1,79.99,'2022-02-20',5,399.95),
(81,2,20,1,99.99,'2022-02-20',3,299.97),
(82,1,21,2,199.99,'2022-03-12',2,399.98),
(82,2,22,2,249.99,'2022-03-12',4,999.96),
(83,1,23,3,349.99,'2022-04-25',6,2099.94),
(83,2,24,3,299.99,'2022-04-25',7,2099.93),
(84,1,25,4,149.99,'2022-05-18',10,1499.9),
(84,2,1,4,199.99,'2022-05-18',8,1599.92),
(85,1,2,5,249.99,'2022-06-30',4,999.96),
(85,2,3,5,349.99,'2022-06-30',9,3149.91),
(86,1,4,6,299.99,'2022-07-15',2,599.98),
(86,2,5,6,149.99,'2022-07-15',3,449.97),
(87,1,1,7,199.99,'2022-08-10',6,1199.94),
(87,2,2,7,249.99,'2022-08-10',2,499.98),
(88,1,3,8,349.99,'2022-09-18',8,2799.92),
(88,2,4,8,299.99,'2022-09-18',5,1499.95),
(89,1,5,9,149.99,'2022-10-05',7,1049.93),
(89,2,6,9,499.99,'2022-10-05',9,4499.91),
(90,1,7,10,119.99,'2022-11-20',6,719.94),
(90,2,8,10,89.99,'2022-11-20',4,359.96),
(91,1,9,11,79.99,'2022-12-11',10,799.9),
(91,2,10,11,99.99,'2022-12-11',6,599.94),
(92,1,11,12,199.99,'2021-01-17',5,999.95),
(92,2,12,12,249.99,'2021-01-17',8,1999.92),
(93,1,13,13,349.99,'2021-02-25',6,2099.94),
(93,2,14,13,299.99,'2021-02-25',7,2099.93),
(94,1,15,14,149.99,'2021-03-10',8,1199.92),
(94,2,16,14,499.99,'2021-03-10',6,2999.94),
(95,1,17,15,119.99,'2021-04-02',5,599.95),
(95,2,18,15,89.99,'2021-04-02',3,269.97),
(96,1,19,16,79.99,'2021-05-19',4,319.96),
(96,2,20,16,99.99,'2021-05-19',7,699.93),
(97,1,21,17,199.99,'2021-06-07',6,1199.94),
(97,2,22,17,249.99,'2021-06-07',3,749.97),
(98,1,23,18,349.99,'2021-07-14',8,2799.92),
(98,2,24,18,299.99,'2021-07-14',5,1499.95),
(99,1,25,19,149.99,'2021-08-22',10,1499.9),
(99,2,1,19,199.99,'2021-08-22',4,799.96),
(100,1,2,20,249.99,'2021-09-30',3,749.97),
(100,2,3,20,349.99,'2021-09-30',7,2449.93),
(101,1,4,21,299.99,'2021-10-05',4,1199.96),
(101,2,5,21,149.99,'2021-10-05',6,899.94),
(102,1,1,22,199.99,'2021-11-12',3,599.97),
(102,2,2,22,249.99,'2021-11-12',7,1749.93),
(103,1,3,23,349.99,'2021-12-14',5,1749.95),
(103,2,4,23,299.99,'2021-12-14',8,2399.92),
(104,1,5,24,149.99,'2022-01-20',9,1349.91),
(104,2,6,24,499.99,'2022-01-20',6,2999.94),
(105,1,7,25,119.99,'2022-02-15',2,239.98),
(105,2,8,25,89.99,'2022-02-15',4,359.96),
(106,1,9,26,79.99,'2022-03-10',5,399.95),
(106,2,10,26,99.99,'2022-03-10',8,799.92),
(107,1,11,27,199.99,'2022-04-25',7,1399.93),
(107,2,12,27,249.99,'2022-04-25',6,1499.94),
(108,1,13,28,349.99,'2022-05-12',9,3149.91),
(108,2,14,28,299.99,'2022-05-12',3,899.97),
(109,1,15,29,149.99,'2022-06-19',6,899.94),
(109,2,16,29,499.99,'2022-06-19',7,3499.93),
(110,1,17,30,119.99,'2022-07-08',8,959.92),
(110,2,18,30,89.99,'2022-07-08',5,449.95),
(111,1,19,31,79.99,'2022-08-21',3,239.97),
(111,2,20,31,99.99,'2022-08-21',4,399.96),
(112,1,21,32,199.99,'2022-09-15',5,999.95),
(112,2,22,32,249.99,'2022-09-15',2,499.98),
(113,1,23,33,349.99,'2022-10-02',6,2099.94),
(113,2,24,33,299.99,'2022-10-02',4,1199.96),
(114,1,25,34,149.99,'2022-11-13',8,1199.92),
(114,2,1,34,199.99,'2022-11-13',9,1799.91),
(115,1,2,35,249.99,'2022-12-17',6,1499.94),
(115,2,3,35,349.99,'2022-12-17',7,2449.93),
(116,1,4,36,299.99,'2023-01-09',8,2399.92),
(116,2,5,36,149.99,'2023-01-09',3,449.97),
(117,1,1,37,199.99,'2023-02-26',5,999.95),
(117,2,2,37,249.99,'2023-02-26',6,1499.94),
(118,1,3,38,349.99,'2023-03-11',4,1399.96),
(118,2,4,38,299.99,'2023-03-11',3,899.97),
(119,1,5,39,149.99,'2023-04-03',7,1049.93),
(119,2,6,39,499.99,'2023-04-03',2,999.98),
(120,1,7,40,119.99,'2023-05-14',8,959.92),
(120,2,8,40,89.99,'2023-05-14',4,359.96),
(121,1,9,41,79.99,'2023-06-09',6,479.94),
(121,2,10,41,99.99,'2023-06-09',9,899.91),
(122,1,11,42,199.99,'2023-07-21',3,599.97),
(122,2,12,42,249.99,'2023-07-21',5,1249.95),
(123,1,13,43,349.99,'2023-08-05',6,2099.94),
(123,2,14,43,299.99,'2023-08-05',7,2099.93),
(124,1,15,44,149.99,'2023-09-16',4,599.96),
(124,2,16,44,499.99,'2023-09-16',5,2499.95),
(125,1,17,45,119.99,'2023-10-11',3,359.97),
(125,2,18,45,89.99,'2023-10-11',2,179.98);




#1.	Verificare che i campi definiti come PK siano univoci. 
-- Table Product
SELECT 
    COUNT(*) AS TotalRecord,
    COUNT(DISTINCT ProductID) AS PKRecord
FROM
    product;

-- Table Sales
SELECT 
    COUNT(DISTINCT SalesID, SalesLine) AS PK,
    COUNT(*) AS TotalRecord
FROM
    sales;

-- Table Region
SELECT 
    GeographyID,
    COUNT(*) AS TotalRecord
FROM
    region
GROUP BY GeographyID
HAVING COUNT(*) > 1;



#2.	Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno.

SELECT 
    ProductName AS ProdottiVenduti,
    YEAR(SalesDate) AS Anno,
    SUM(SalesAmount) AS FatturatoTotale
FROM
    product AS p
        JOIN
    sales AS s ON p.ProductID = s.ProductID
GROUP BY p.ProductID , YEAR(SalesDate)
ORDER BY ProductName, Anno;



#3.	Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente. 

SELECT 
    Country AS Stato,
    YEAR(SalesDate) AS Anno,
    SUM(SalesAmount) AS FatturatoTotale
FROM
    sales AS s
        JOIN
    region AS r ON s.GeographyID = r.GeographyID
GROUP BY Country , YEAR(SalesDate)
ORDER BY Anno , FatturatoTotale DESC;



#4.	Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato? 

SELECT 
    Category as Categoria, SUM(QuantitySold) AS QuantitaVendute
FROM
    product AS p
        JOIN
    sales AS s ON p.ProductID = s.ProductID
GROUP BY Category
ORDER BY QuantitaVendute DESC
LIMIT 1;
-- In base al mio database, la categoria di giocattoli più venduta è rappresentata dalle macchinine



#5.	Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti. 

-- with SUBQUERY
SELECT 
    ProductID, ProductName
FROM
    product AS p
WHERE
    FinishedGoodsFlag = 1
        AND ProductID NOT IN (SELECT 
            ProductID
        FROM
            sales)
ORDER BY ProductID;

-- with JOIN
SELECT 
    p.ProductID, ProductName
FROM
    product AS p
        LEFT JOIN
    sales AS s ON p.ProductID = s.ProductID
WHERE
    FinishedGoodsFlag = 1
        AND s.ProductID IS NULL
ORDER BY p.ProductID;
-- In base al mio database, i prodotti finiti non venduti sono cod: 26,27,28,39,30



#6.	Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente).

SELECT 
    DATE_FORMAT(MAX(SalesDate), '%d/%m/%Y') AS UltimaDataVendita,
    p.ProductID,
    ProductName
FROM
    product AS p
        JOIN
    sales AS s ON p.ProductID = s.ProductID
GROUP BY p.ProductID
ORDER BY UltimaDataVendita DESC;



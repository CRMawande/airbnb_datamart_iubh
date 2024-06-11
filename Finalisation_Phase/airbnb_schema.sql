-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- Schema airbnb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema airbnb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `airbnb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `airbnb` ;

-- -----------------------------------------------------
-- Table `airbnb`.`access_level`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`access_level` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`access_level` (
  `id` INT NOT NULL,
  `role` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`allowed_operations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`allowed_operations` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`allowed_operations` (
  `id` INT NOT NULL,
  `operation` VARCHAR(255) NOT NULL,
  `description` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`access_level_operations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`access_level_operations` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`access_level_operations` (
  `id` INT NOT NULL,
  `allowed_operations_id` INT NOT NULL,
  `access_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `access_id_fk8_idx` (`access_id` ASC) VISIBLE,
  INDEX `allowed_operations-fk_idx` (`allowed_operations_id` ASC) VISIBLE,
  CONSTRAINT `access_id_fk8`
    FOREIGN KEY (`access_id`)
    REFERENCES `airbnb`.`access_level` (`id`),
  CONSTRAINT `allowed_operations-fk`
    FOREIGN KEY (`allowed_operations_id`)
    REFERENCES `airbnb`.`allowed_operations` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`country`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`country` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`country` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each country',
  `name` VARCHAR(255) NOT NULL,
  `country_code` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `country_name_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`region`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`region` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`region` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each region',
  `country_id` INT NOT NULL,
  `region_name` VARCHAR(255) NOT NULL COMMENT 'Name of the region, must be unique',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `region_name_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `country_id_fk1_idx` (`country_id` ASC) VISIBLE,
  CONSTRAINT `country_id_fk1`
    FOREIGN KEY (`country_id`)
    REFERENCES `airbnb`.`country` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`district`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`district` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`district` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of neighborhood',
  `region_id` INT NOT NULL COMMENT 'Name of the neighborhood',
  `name` VARCHAR(255) NOT NULL COMMENT 'Optional description of the neighborhood ',
  `transportation_score` INT NOT NULL COMMENT ' Optional score for the availability and convenience of public transport, rated out of 10 (integer)',
  `safety_rating` INT NOT NULL COMMENT 'Optional rating for the perceived safety of the neighborhood, rated out of 10 (integer)',
  `population` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `region_id_fk2_idx` (`region_id` ASC) VISIBLE,
  CONSTRAINT `region_id_fk2`
    FOREIGN KEY (`region_id`)
    REFERENCES `airbnb`.`region` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`address` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`address` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT ' unique identifier for each address record.',
  `country_id` INT NOT NULL COMMENT 'Country associated with the address',
  `district_id` INT NOT NULL,
  `zip_code` INT NOT NULL COMMENT 'Postal code or ZIP code.',
  `street_address_one` VARCHAR(255) NOT NULL COMMENT ' Primary part of the address (street name and house/building number).',
  `street_address_two` VARCHAR(255) NULL DEFAULT NULL COMMENT 'secondary part of the address, can be NULL',
  PRIMARY KEY (`id`),
  INDEX `fk_address_country1_idx` (`country_id` ASC) VISIBLE,
  INDEX `district_id_fk_idx` (`district_id` ASC) VISIBLE,
  CONSTRAINT `district_id_fk`
    FOREIGN KEY (`district_id`)
    REFERENCES `airbnb`.`district` (`id`),
  CONSTRAINT `fk_address_country`
    FOREIGN KEY (`country_id`)
    REFERENCES `airbnb`.`country` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`user` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of user account',
  `first_name` VARCHAR(255) NOT NULL COMMENT 'First name of the user',
  `last_name` VARCHAR(255) NOT NULL COMMENT 'Last name of the user',
  `gender` VARCHAR(255) NOT NULL COMMENT 'Gender of the user',
  `date_of_birth` DATE NOT NULL COMMENT 'Date of birth of the user\\n',
  `email_address` VARCHAR(255) NOT NULL COMMENT 'Email address of the user',
  `username` VARCHAR(255) NOT NULL COMMENT 'Username chosen by the user',
  `phone` VARCHAR(25) NOT NULL COMMENT 'Hashed and salted representation of the users password',
  `password` VARCHAR(255) NOT NULL COMMENT 'Date when the user joined',
  `is_host` TINYINT NOT NULL COMMENT 'Boolean indicating if the user is a host',
  `last_updated` DATETIME NOT NULL COMMENT 'Contact number for communication and verification',
  `about` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `user_name_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_address_UNIQUE` (`email_address` ASC) VISIBLE,
  UNIQUE INDEX `mobile_number_UNIQUE` (`last_updated` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`admin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`admin` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`admin` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `access_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_fk7_idx` (`user_id` ASC) VISIBLE,
  INDEX `access_id_idx` (`access_id` ASC) VISIBLE,
  CONSTRAINT `access_id`
    FOREIGN KEY (`access_id`)
    REFERENCES `airbnb`.`access_level` (`id`),
  CONSTRAINT `user_id_fk7`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`amenity_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`amenity_category` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`amenity_category` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each detail category',
  `category_name` VARCHAR(255) NOT NULL COMMENT 'Name of the detail category',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `category_name_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`amenity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`amenity` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`amenity` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of property details',
  `amenity_category_id` INT NOT NULL COMMENT 'Identifier of attriubute category table',
  `name` VARCHAR(255) NOT NULL COMMENT 'Name of attribute (ex: amenities-swimming pool, house rules-no smoking, safety & property-fire extinguisher)',
  `description` LONGTEXT NULL DEFAULT NULL COMMENT 'Description of the attribute',
  PRIMARY KEY (`id`),
  INDEX `detail_category_id` (`amenity_category_id` ASC) INVISIBLE,
  CONSTRAINT `property_attributes_category_ibfk_1`
    FOREIGN KEY (`amenity_category_id`)
    REFERENCES `airbnb`.`amenity_category` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`guest_types`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`guest_types` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`guest_types` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each guest type',
  `guest_type_name` VARCHAR(255) NOT NULL COMMENT 'Name of the guest type(ex: adult, children, infant, etc.)',
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`guest`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`guest` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`guest` (
  `id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `guest_type_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_fk6_idx` (`user_id` ASC) VISIBLE,
  INDEX `guest_type_fk_idx` (`guest_type_id` ASC) VISIBLE,
  CONSTRAINT `guest_type_fk`
    FOREIGN KEY (`guest_type_id`)
    REFERENCES `airbnb`.`guest_types` (`id`),
  CONSTRAINT `user_id_fk6`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`property_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`property_type` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`property_type` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each property type',
  `name` VARCHAR(255) NOT NULL COMMENT 'Name of the property type',
  `description` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `property_type_name_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`property_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`property_category` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`property_category` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each property category',
  `property_type_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL COMMENT 'Name of the property category, must be unique',
  `description` LONGTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `category_name_UNIQUE` (`id` ASC) INVISIBLE,
  INDEX `property_type_fk2_idx` (`property_type_id` ASC) VISIBLE,
  CONSTRAINT `property_type_fk2`
    FOREIGN KEY (`property_type_id`)
    REFERENCES `airbnb`.`property_type` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`host`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`host` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`host` (
  `host_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of host',
  `user_id` INT NOT NULL COMMENT ' Identifier of user account associated with host',
  `host_since` DATE NOT NULL COMMENT 'Date when user became a host',
  `superhost_status` TINYINT(1) NOT NULL COMMENT 'Boolean indicating superhost status',
  PRIMARY KEY (`host_id`),
  UNIQUE INDEX `user_account_id_UNIQUE` (`user_id` ASC) VISIBLE,
  INDEX `user_account_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `host_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`property`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`property` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`property` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each record',
  `host_id` INT NOT NULL COMMENT 'Foreign key referencing the host table',
  `property_type_id` INT NOT NULL COMMENT 'Foreign key referencing the property_type table',
  `property_category_id` INT NOT NULL,
  `address_id` INT NOT NULL COMMENT 'Foreign Key referencing address table',
  `name` VARCHAR(255) NOT NULL COMMENT 'Name of the property',
  `description` LONGTEXT NOT NULL COMMENT 'Description of the property',
  `max_guest_count` INT NOT NULL COMMENT 'Maximum number of guests that can be accommodated in a property',
  `num_beds` INT NOT NULL COMMENT 'Total  number of beds, must be greater than 0',
  `baths` INT NOT NULL COMMENT 'Total number of bathrooms, must be greater than 0',
  `rooms` INT NOT NULL COMMENT 'Price per night, must be greater than 0',
  `units_available` INT NOT NULL,
  `total_units` INT NOT NULL,
  `visible` TINYINT NOT NULL,
  `smoking` TINYINT NOT NULL,
  `longitude` VARCHAR(50) NOT NULL,
  `latitude` VARCHAR(50) NOT NULL,
  `rate_per_day` DOUBLE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `host_id` (`host_id` ASC) VISIBLE,
  INDEX `property_type_id` (`property_type_id` ASC) VISIBLE,
  INDEX `property_ibfk_1_idx` (`address_id` ASC) VISIBLE,
  INDEX `property_cat_fk_idx` (`property_category_id` ASC) VISIBLE,
  CONSTRAINT `property_cat_fk`
    FOREIGN KEY (`property_category_id`)
    REFERENCES `airbnb`.`property_category` (`id`),
  CONSTRAINT `property_ibfk_1`
    FOREIGN KEY (`address_id`)
    REFERENCES `airbnb`.`address` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `property_ibfk_2`
    FOREIGN KEY (`host_id`)
    REFERENCES `airbnb`.`host` (`host_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `property_ibfk_4`
    FOREIGN KEY (`property_type_id`)
    REFERENCES `airbnb`.`property_type` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`reservations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`reservations` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`reservations` (
  `reservation_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of booking',
  `property_id` INT NOT NULL COMMENT ' Identifier of booked property',
  `user_id` INT NOT NULL COMMENT 'Identifier of user who made the booking',
  `num_of_days` INT NOT NULL COMMENT 'Status of booking',
  `rate_per_day` INT NOT NULL COMMENT 'Check-in date of guest',
  `duration` INT NOT NULL COMMENT ' Check-out date of guest',
  `cancelled` TINYINT NOT NULL COMMENT 'Date when booking was made',
  `active` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'tracks the last time a record was updated',
  `reservation_date` DATETIME NOT NULL,
  `checkin_date` DATETIME NOT NULL,
  `checkout_date` DATETIME NOT NULL,
  `created_on` DATETIME NOT NULL,
  PRIMARY KEY (`reservation_id`),
  INDEX `property_id` (`property_id` ASC) VISIBLE,
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `booking_ibfk_1`
    FOREIGN KEY (`property_id`)
    REFERENCES `airbnb`.`property` (`id`)
    ON UPDATE CASCADE,
  CONSTRAINT `booking_ibfk_2`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`guest_reservations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`guest_reservations` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`guest_reservations` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of booking guest',
  `reservation_id` INT NOT NULL COMMENT 'identifier of associated booking',
  `guest_types_id` INT NOT NULL COMMENT 'Identifier of guest demographics (ex: adults, childrens, infants, pets, etc.)',
  `num_guests` INT NOT NULL COMMENT 'Number of guests of a specific guest type (ex: adult 2, children 2, infant 1, etc.)',
  PRIMARY KEY (`id`),
  INDEX `booking_id` (`reservation_id` ASC) VISIBLE,
  INDEX `guest_type_id` (`guest_types_id` ASC) VISIBLE,
  CONSTRAINT `booking_guest_ibfk_1`
    FOREIGN KEY (`reservation_id`)
    REFERENCES `airbnb`.`reservations` (`reservation_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `booking_guest_ibfk_2`
    FOREIGN KEY (`guest_types_id`)
    REFERENCES `airbnb`.`guest_types` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`language`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`language` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`language` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each language',
  `language_name` VARCHAR(255) NOT NULL COMMENT 'Name of the language, must be unique',
  PRIMARY KEY (`id`),
  UNIQUE INDEX `language_name_UNIQUE` (`id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`messages`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`messages` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`messages` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'unique identifier for each message',
  `sender_id` INT NOT NULL COMMENT 'identifier of the user who sent the message',
  `receiver_id` INT NOT NULL COMMENT 'Identifier of the user who received the message',
  `content` LONGTEXT NOT NULL COMMENT 'Content of the message',
  `timestamp` TIMESTAMP NOT NULL COMMENT 'Time when the message was sent',
  PRIMARY KEY (`id`),
  INDEX `sender_id` (`sender_id` ASC) VISIBLE,
  INDEX `messages_ibfk_2_idx` (`receiver_id` ASC) VISIBLE,
  CONSTRAINT `messages_ibfk_1`
    FOREIGN KEY (`sender_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2`
    FOREIGN KEY (`receiver_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`voucher`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`voucher` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`voucher` (
  `voucher_id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of voucher',
  `title` VARCHAR(255) NOT NULL COMMENT 'Title of voucher',
  `unique_code` VARCHAR(255) NOT NULL COMMENT 'Unique code of voucher',
  `discount_amount` DECIMAL(10,2) NOT NULL COMMENT 'Discount amount provided by voucher',
  `min_booking_value` DECIMAL(10,2) NOT NULL COMMENT 'Minimum booking value for voucher applicability',
  `expiry_date` DATE NOT NULL COMMENT 'Expiry date of voucher',
  `created_at` DATE NOT NULL COMMENT 'Creation Date of voucher',
  PRIMARY KEY (`voucher_id`),
  UNIQUE INDEX `unique_code_UNIQUE` (`voucher_id` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`payment`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`payment` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`payment` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each transaction',
  `reservation_id` INT NOT NULL COMMENT 'Identifier of the booking related to the transaction',
  `voucher_id` INT NULL DEFAULT NULL COMMENT 'Identifier of the voucher used in the transaction',
  `payment_method` VARCHAR(255) NOT NULL COMMENT 'Payment method used in the transaction',
  `transaction_date` DATE NOT NULL COMMENT 'Date when the transaction was made',
  `tax` DECIMAL(10,2) NOT NULL COMMENT 'Tax amount in the transaction',
  `service_cost` DECIMAL(10,2) NOT NULL COMMENT 'Service charge in the transaction',
  `cleaning_cost` DECIMAL(10,2) NOT NULL COMMENT 'Cleaning charge in the transaction',
  `airbnb_cost` DECIMAL(10,2) NOT NULL COMMENT 'Airbnb charge in the transaction',
  `total_paid` DECIMAL(10,2) NOT NULL COMMENT 'Status of the transaction',
  `refund_total` DECIMAL(10,2) NULL DEFAULT NULL,
  `Due_on` DATETIME NULL DEFAULT NULL,
  `Created_on` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `booking_id` (`reservation_id` ASC) VISIBLE,
  INDEX `voucher_id` (`voucher_id` ASC) VISIBLE,
  CONSTRAINT `transaction_ibfk_1`
    FOREIGN KEY (`reservation_id`)
    REFERENCES `airbnb`.`reservations` (`reservation_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `transaction_ibfk_2`
    FOREIGN KEY (`voucher_id`)
    REFERENCES `airbnb`.`voucher` (`voucher_id`)
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`property_amenity`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`property_amenity` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`property_amenity` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifiier for each property feature link',
  `property_id` INT NOT NULL COMMENT 'Identifier of the property',
  `amenity_id` INT NOT NULL COMMENT 'Identifier of the property attributes',
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `property_id` (`property_id` ASC) VISIBLE,
  INDEX `property_details_id` (`amenity_id` ASC) VISIBLE,
  CONSTRAINT `property_attributes_link_ibfk_1`
    FOREIGN KEY (`property_id`)
    REFERENCES `airbnb`.`property` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `property_attributes_link_ibfk_2`
    FOREIGN KEY (`amenity_id`)
    REFERENCES `airbnb`.`amenity` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`property_availability`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`property_availability` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`property_availability` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each availability entry',
  `property_id` INT NOT NULL COMMENT 'Identifier of the property',
  `available_date` DATETIME NOT NULL COMMENT 'Start date of the availability period',
  `available_status` VARCHAR(255) NOT NULL COMMENT 'End date of the availability period',
  `price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `property_id` (`property_id` ASC) VISIBLE,
  CONSTRAINT `property_availability_ibfk_1`
    FOREIGN KEY (`property_id`)
    REFERENCES `airbnb`.`property` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`property_images`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`property_images` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`property_images` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of the image',
  `property_id` INT NOT NULL COMMENT 'Foreign key referencing unique id of the property table',
  `image_url` VARCHAR(255) NOT NULL COMMENT 'URL of the image',
  `image_description` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Description of the image',
  PRIMARY KEY (`id`),
  INDEX `fk_property_images_property1_idx` (`property_id` ASC) VISIBLE,
  CONSTRAINT `fk_property_images_property`
    FOREIGN KEY (`property_id`)
    REFERENCES `airbnb`.`property` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`review_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`review_type` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`review_type` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each record',
  `type_name` VARCHAR(255) NOT NULL COMMENT 'Rating given to the aspect in the review',
  `description` LONGTEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`review`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`review` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`review` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of the review',
  `reservation_id` INT NOT NULL COMMENT 'Identifier of the booking associated with review',
  `review_type_id` INT NOT NULL COMMENT 'Foreign key referencing the host table',
  `comment` TEXT NOT NULL COMMENT 'Text of the review written by the host',
  `anonymous` TINYINT NOT NULL COMMENT 'Date when the review was posted',
  `rating` FLOAT NOT NULL COMMENT 'Numerical rating given to guest',
  `created_on` DATETIME NOT NULL COMMENT 'Rating given by the host to the guest',
  PRIMARY KEY (`id`),
  INDEX `fk_host_review_booking1_idx` (`reservation_id` ASC) VISIBLE,
  INDEX `fk_guest_review_type1_idx` (`review_type_id` ASC) VISIBLE,
  CONSTRAINT `fk_guest_review_booking`
    FOREIGN KEY (`reservation_id`)
    REFERENCES `airbnb`.`reservations` (`reservation_id`)
    ON UPDATE CASCADE,
  CONSTRAINT `fk_guest_review_type1`
    FOREIGN KEY (`review_type_id`)
    REFERENCES `airbnb`.`review_type` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`property_review`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`property_review` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`property_review` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each review',
  `property_id` INT NOT NULL COMMENT 'identifier of the property being reviewed by booking(user)',
  `review_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_property_review_property1_idx` (`property_id` ASC) VISIBLE,
  INDEX `fk_review_id_idx` (`review_id` ASC) VISIBLE,
  CONSTRAINT `fk_property_review_property1`
    FOREIGN KEY (`property_id`)
    REFERENCES `airbnb`.`property` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_review_id`
    FOREIGN KEY (`review_id`)
    REFERENCES `airbnb`.`review` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`social_media`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`social_media` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`social_media` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier for each social media',
  `user_id` INT NOT NULL COMMENT 'Identifier of the user who owns the social media',
  `platform_name` VARCHAR(255) NOT NULL COMMENT 'Name of the social media platform',
  `account_url` VARCHAR(255) NULL DEFAULT NULL COMMENT 'URL of the social media account, must be unique',
  PRIMARY KEY (`id`),
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  CONSTRAINT `social_media_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`user_language`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`user_language` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`user_language` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of user-language link',
  `user_id` INT NOT NULL COMMENT ' Identifier of associated user',
  `language_id` INT NOT NULL COMMENT 'Identifier of associated language',
  PRIMARY KEY (`id`),
  INDEX `user_id` (`user_id` ASC) VISIBLE,
  INDEX `language_id_idx` (`language_id` ASC) VISIBLE,
  CONSTRAINT `language_id`
    FOREIGN KEY (`language_id`)
    REFERENCES `airbnb`.`language` (`id`),
  CONSTRAINT `user_language_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `airbnb`.`user_preferred_guest_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `airbnb`.`user_preferred_guest_type` ;

CREATE TABLE IF NOT EXISTS `airbnb`.`user_preferred_guest_type` (
  `id` INT NOT NULL AUTO_INCREMENT COMMENT 'Unique identifier of user preferred guests type',
  `user_id` INT NOT NULL COMMENT 'Foreign key referencing the user in user account table',
  `guest_types_id` INT NOT NULL COMMENT 'Foreign key referencing the guest categories table (ex: adult, children, infant)',
  `preferred_num_guests` INT NULL DEFAULT NULL COMMENT 'Number of guests of the preferred type',
  PRIMARY KEY (`id`),
  INDEX `fk_user_preferred_guest_type_guest_demographics1_idx` (`guest_types_id` ASC) VISIBLE,
  INDEX `fk_user_preferred_guest_type_user_account1_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_preferred_guest_type_guest_demographics1`
    FOREIGN KEY (`guest_types_id`)
    REFERENCES `airbnb`.`guest_types` (`id`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_user_preferred_guest_type_user_account1`
    FOREIGN KEY (`user_id`)
    REFERENCES `airbnb`.`user` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

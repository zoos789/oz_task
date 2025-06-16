CREATE DATABASE oztask;

USE oztask;
-- 고객의 정보
CREATE TABLE `PET_OWNER` (
    `ownerID` VARCHAR(50) NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `contact` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`ownerID`)
);

--  반려동물 
CREATE TABLE `PETS` (
    `petID` VARCHAR(50) NOT NULL,
    `species` VARCHAR(50),
    `breed` VARCHAR(50),
    `petname` VARCHAR(50),
    `ownerID` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`petID`),
    FOREIGN KEY (`ownerID`) REFERENCES `PET_OWNER`(`ownerID`)
);

--  객실 
CREATE TABLE `ROOMS` (
    `roomID` VARCHAR(50) NOT NULL,
    `roomnumber` VARCHAR(50) NOT NULL,
    `room_type` VARCHAR(50),
    `pricepernight` DECIMAL(10,2),
    PRIMARY KEY (`roomID`)
);

--  예약 
CREATE TABLE `RESERVATIONS` (
    `reservationID` VARCHAR(50) NOT NULL,
    `servicename` VARCHAR(50),
    `serviceprice` DECIMAL(10,2),
    `petID` VARCHAR(50) NOT NULL,
    `roomID` VARCHAR(50) NOT NULL,
    PRIMARY KEY (`reservationID`),
    FOREIGN KEY (`petID`) REFERENCES `PETS`(`petID`),
    FOREIGN KEY (`roomID`) REFERENCES `ROOMS`(`roomID`)
);

-- 서비스
CREATE TABLE `SERVICES` (
    `serviceID` VARCHAR(50) NOT NULL,
    `servicename` VARCHAR(50),
    `serviceprice` DECIMAL(10,2),
    `reservationID` VARCHAR(255) NOT NULL,
    PRIMARY KEY (`serviceID`),
    FOREIGN KEY (`reservationID`) REFERENCES `RESERVATIONS`(`reservationID`)
);
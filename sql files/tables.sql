CREATE TABLE IF NOT EXISTS Branch (
    branchId INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    postalAddress VARCHAR(50),
);

CREATE TABLE IF NOT EXISTS BranchPhone (
    branchId INT, 
    phoneNumber VARCHAR(20), 
    PRIMARY KEY (branchId, phoneNumber),
    FOREIGN KEY (branchId) REFERENCES Branch(branchId)
	

CREATE TABLE IF NOT EXISTS Customer (
    customerId INT PRIMARY KEY,
    firstName VARCHAR(50),
    lastName VARCHAR(50),
    dateOfBirth DATE,
    address VARCHAR(100),
    phoneNo VARCHAR(20),
    licenseId VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Car (
    carId INT PRIMARY KEY,
    type VARCHAR(50),
    plateNumber VARCHAR(20),
    status VARCHAR(20),
    branchId INT,
    FOREIGN KEY (branchId) REFERENCES Branch(branchId)
);

CREATE TABLE IF NOT EXISTS Employee (
    employeeId INT PRIMARY KEY,
    name VARCHAR(100),
    role VARCHAR(50),
    phoneNumber VARCHAR(20),
    branchId INT,
    FOREIGN KEY (branchId) REFERENCES Branch(branchId)
);

CREATE TABLE IF NOT EXISTS Insurance (
    policyId INT PRIMARY KEY,
    type VARCHAR(50),
    status VARCHAR(20),
    renewalDate DATE,
    carId INT,
    FOREIGN KEY (carId) REFERENCES Car(carId)
);

CREATE TABLE IF NOT EXISTS Maintenance (
    maintenanceId INT PRIMARY KEY,
    serviceDate DATE,
    cost DECIMAL(10, 2),
    branchId INT,
    carId INT,
    FOREIGN KEY (branchId) REFERENCES Branch(branchId),
    FOREIGN KEY (carId) REFERENCES Car(carId)
);

CREATE TABLE IF NOT EXISTS Agreement (
    contractId INT PRIMARY KEY,
    pickUpDate DATE,
    returnDate DATE,
    branchId INT,
    customerId INT,
    carId INT,
    FOREIGN KEY (branchId) REFERENCES Branch(branchId),
    FOREIGN KEY (customerId) REFERENCES Customer(customerId),
    FOREIGN KEY (carId) REFERENCES Car(carId)
);


CREATE TABLE IF NOT EXISTS Payments (
    paymentId INT PRIMARY KEY,
    amount DECIMAL(10, 2),
    paymentDate DATE,
    paymentMethod VARCHAR(50),
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customer(customerId)
);
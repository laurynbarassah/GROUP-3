INSERT INTO Branch (branchId, name, address, city, postalAddress)
VALUES 
(1, 'Northside Rentals', '12 High St', 'London', 'N1 2AB'),
(2, 'Southside Hub', '45 River Rd', 'London', 'SE1 7PB'),
(3, 'Midlands Express', '88 Central Ave', 'Birmingham', 'B1 1QU'),
(4, 'Coastal Cars', '3 Marine Dr', 'Brighton', 'BN1 1AA');
 
INSERT INTO BranchPhone (branchID, PhoneNumber)
VALUES 
(1, '020-7123-4567'),
(2, '020-8987-6543'),
(3, '0121-555-0199'),
(4, '01273-444-555');

INSERT INTO Customer (customerId, firstName, lastName, dateOfBirth, address, phoneNo, licenseId)
VALUES 
(101, 'Arthur', 'Dent', '1979-05-11', '15 Country Ln, Cottington', '07700-900001', 'DENT790511AD'),
(102, 'Ford', 'Prefect', '1982-03-22', '42 Galaxy Way, London', '07700-900042', 'PREF820322FP'),
(103, 'Tricia', 'McMillan', '1988-09-15', '101 Starry Dr, Birmingham', '07700-900101', 'MCMI880915TM'),
(104, 'Marvin', 'Android', '1950-01-01', '01 Depressing St, Brighton', '07700-900999', 'ANDR500101MA');

INSERT INTO Car (carId, type, plateNumber, status, branchId)
VALUES 
(501, 'Compact', 'BT72 XYZ', 'Available', 1),
(502, 'Luxury Sedan', 'LD23 ABC', 'Rented', 2),
(503, 'Electric Hatchback', 'EV24 GRN', 'Maintenance', 3),
(504, 'SUV', 'BR21 OFF', 'Available', 4);

INSERT INTO Employee (employeeId, name, role, phoneNumber, branchId)
VALUES 
(1, 'Zaphod Beeblebrox', 'CEO', '07711-222333', 1),
(2, 'Trillian Astra', 'Manager', '07711-444555', 2),
(3, 'Eddie Computer', 'Support', '07711-666777', 3),
(4, 'Slartibartfast', 'Designer', '07711-888999', 4);
 
INSERT INTO Insurance (policyId, type, status, renewalDate, carId)
VALUES 
(901, 'Comprehensive', 'Active', '2026-12-01', 501),
(902, 'Premium Plus', 'Active', '2027-01-15', 502),
(903, 'Standard', 'Expired', '2026-02-10', 503),
(904, 'Off-Road Special', 'Active', '2026-11-20', 504);

INSERT INTO Maintenance (maintenanceId, serviceDate, cost, branchId, carId)
VALUES 
(301, '2026-01-10', 120.00, 1, 501),
(302, '2026-02-15', 450.00, 2, 502),
(303, '2026-03-05', 200.00, 3, 503),
(304, '2025-11-20', 85.50, 4, 504);

INSERT INTO Agreement (contractId, pickUpDate, returnDate, branchId, customerId, carId)
VALUES 
(701, '2026-03-01', '2026-03-05', 1, 101, 501),
(702, '2026-03-10', '2026-03-20', 2, 102, 502),
(703, '2026-02-28', '2026-03-02', 3, 103, 503),
(704, '2026-03-12', '2026-03-15', 4, 104, 504);

INSERT INTO Payments (paymentId, amount, paymentDate, paymentMethod, customerId)
VALUES 
(801, 150.00, '2026-03-01', 'Credit Card', 101),
(802, 600.00, '2026-03-10', 'Bank Transfer', 102),
(803, 85.00, '2026-02-28', 'Cash', 103),
(804, 220.00, '2026-03-12', 'Debit Card', 104);
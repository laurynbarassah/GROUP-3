UPDATE Car
SET status = 'Available'
WHERE carId = 502; --changing car status to available

UPDATE Customer
SET phoneNo = '07700-111222'
WHERE customerId = 101; --in case a customer changes their phone number

UPDATE Car
SET branchId = 3
WHERE carId = 501; --moves car 501 to 'Midlands Express'

UPDATE Branch
SET address = '250 Enterprise Way',
    postalAddress = 'NW1 5ZZ'
WHERE branchId = 1; --changing a branch physical address

UPDATE Insurance
SET status = 'Expired'
WHERE renewalDate < '2026-03-15'; -- Marks all past-due policies as expired

UPDATE Payments
SET paymentMethod = 'Debit Card'
WHERE paymentId = 803;
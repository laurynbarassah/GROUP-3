SELECT 
    A.contractid, 
    C.firstName, 
    C.lastName, 
    V.type AS carModel, 
    V.plateNumber, 
    A.pickUpDate, 
    A.returnDate
FROM Agreement A
JOIN Customer C ON A.customerId = C.customerId
JOIN Car V ON A.carId = V.carId;

SELECT  B.name AS branchName, 
    SUM(P.amount) AS totalRevenue
FROM Branch B
JOIN Agreement A ON B.branchId = A.branchId
JOIN Payments P ON A.customerId = P.customerId
GROUP BY B.name;

SELECT B.Name AS branchName, 
    B.city, 
    COUNT(A.contractId) AS totalRentals,
    SUM(P.amount) AS totalRevenue
FROM Branch B
JOIN Agreement A ON B.branchId = A.branchId  
JOIN Payments P ON A.customerId = P.customerId 
GROUP BY B.name, B.city
ORDER BY totalRevenue DESC;
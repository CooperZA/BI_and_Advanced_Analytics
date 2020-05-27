--2 question a
--SELECT * from DimCustomer

--2 question b
--select CustomerKey, LastName, FirstName, MaritalStatus, EmailAddress from DimCustomer

--2 question c
--select EmployeeKey, LastName, FirstName, HireDate, EmailAddress, Phone from DimEmployee where Title = 'Marketing Manager';

--2 question d
--select CustomerKey, ProductKey, OrderQuantity, UnitPrice, ExtendedAmount from FactInternetSales where UnitPrice > 2000 order by ExtendedAmount;

--2 question e
--select CustomerKey, SUM(ExtendedAmount) as CustomerRevenue from FactInternetSales group by CustomerKey order by CustomerRevenue;

--2 question f
--select LastName, FirstName, SUM(ExtendedAmount) as CustomerRevenue from DimCustomer inner join FactInternetSales on DimCustomer.CustomerKey = FactInternetSales.CustomerKey group by LastName, FirstName order by CustomerRevenue;

--2 question g
select ProductKey, EnglishProductName, EnglishDescription, CultureName, ProductDescription from DimProduct left outer join FactAdditionalInternationalProductDescription on DimProduct.ProductKey = FactAdditionalInternationalProductDescription.ProductKey;

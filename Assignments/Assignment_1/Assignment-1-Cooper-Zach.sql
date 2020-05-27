Select LastName, FirstName, MaritalStatus, EmailAddress, Education, YearlyIncome, TotalChildren, NumberCarsOwned, NumberChildrenAtHome from DimCustomer where Education = 'Bachelors';

Select * from DimProduct left outer join FactSales on DimProduct.ProductKey = FactSales.ProductKey order by DimProduct.ProductKey;

Select * from DimProduct inner join FactSales on DimProduct.ProductKey = FactSales.ProductKey;
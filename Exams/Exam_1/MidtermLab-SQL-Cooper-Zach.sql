--Queston 1 - find all employees of the sales departemnt
Select * from DimEmployee where DepartmentName = 'Sales';

--Question 2 Find unique name of employees with a sales quota
Select LastName, FirstName, SalesQuantityQuota from DimEmployee left outer join FactSalesQuota on DimEmployee.EmployeeKey = FactSalesQuota.EmployeeKey group by LastName, FirstName, SalesQuantityQuota, DimEmployee.EmployeeKey;

--Question 3 find total actual salesamount from each employeee
Select EmployeeKey, sum(SalesAmountQuota) from FactSalesQuota where ScenarioKey = 1 group by EmployeeKey;

--Question 4 total budgeted sales amount for each employee
--Select * from DimScenario where ScenarioKey = 2
Select EmployeeKey, SUM(SalesAmountQuota) from FactSalesQuota where ScenarioKey = 2 group by EmployeeKey;
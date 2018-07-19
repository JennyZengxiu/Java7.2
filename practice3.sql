#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
SELECT company.companyName,employee.salary FROM company RIGHT JOIN employee ON company.id = employee.companyId
WHERE employee.salary >= (SELECT MAX(s.avgSalary) FROM (SELECT AVG(salary) AS avgSalary ,companyId FROM employee GROUP BY companyId)s)
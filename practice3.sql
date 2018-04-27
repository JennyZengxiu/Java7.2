#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
SELECT company.companyName,employee.salary AS avgSalary FROM company,employee
WHERE employee.companyId  = company.id
AND employee.salary = (SELECT AVG(salary) FROM employee WHERE employee.companyId  = company.id)


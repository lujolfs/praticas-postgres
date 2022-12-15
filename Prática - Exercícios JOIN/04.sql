SELECT 
    u1.id, u1.name, roles.name AS role, companies.name AS company, experiences."startDate"
FROM 
    experiences
JOIN 
    users u1 
ON 
    experiences."userId" = u1.id
JOIN 
    companies 
ON 
    experiences."companyId" = companies.id
JOIN
    roles
ON
    experiences."roleId" = roles.id
WHERE 
    experiences."userId" = 50 AND
    experiences."endDate" IS NULL;
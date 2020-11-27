--Questão 07
select avg(Salario) from empregado;
-- resposta 35125.000000000000


-- Questão 08
SELECT
	empregado.pnome
,	departamento.dnumero
,	departamento.dnome
,	trabalha_em.essn
,	trabalha_em.horas
,	projeto.pnumero
,	projeto.pjnome
FROM
	empregado
inner JOIN
	departamento	ON	empregado.dno	=	departamento.dnumero
inner JOIN
	trabalha_em		ON	empregado.ssn	=	trabalha_em.essn
inner JOIN
	projeto			ON	projeto.pnumero	=	trabalha_em.pno
WHERE
	departamento.dnumero	=	5
and	trabalha_em.horas		>	10
AND	projeto.pjnome			=	'ProductX'
--Resposta 2

-- Questão 09
select
	empregado.pnome
,	dependente.*
from
   empregado
inner JOIN	dependente	ON	empregado.pnome	=	dependente.nome_dependente
-- Resposta 0

--Questão 10
SELECT
	concat(empregado.pnome, ' ' ,empregado.unome)		as colaborador,
    concat(supervisor.pnome, ' ',supervisor.unome)	as lider
FROM
	empregado
inner JOIN	empregado as supervisor on empregado.superssn = supervisor.ssn
WHERE
	supervisor.pnome	=	'Franklin'
AND
	supervisor.unome	=	'Wong'
-- resposta Joyce English & Ramesh Narayan

-- Questão 11
SELECT
	concat(empregado.pnome, ' ', empregado.unome)	nome
,	departamento.dnumero
,	departamento.dnome
,	trabalha_em.essn
,	trabalha_em.horas
,	projeto.pnumero
,	projeto.pjnome
FROM
	empregado
inner JOIN
	departamento	ON	empregado.dno	=	departamento.dnumero
inner JOIN
	trabalha_em		ON	empregado.ssn	=	trabalha_em.essn
inner JOIN
	projeto			ON	projeto.pnumero	=	trabalha_em.pno
WHERE
	projeto.pjnome			=	'Newbenefits'
order BY
	trabalha_em.horas desc
--Resposta Alicia

-- Questão 12
SELECT
	sum(empregado.salario)
FROM
	empregado
inner JOIN
	departamento	ON	empregado.dno	=	departamento.dnumero
WHERE
	departamento.dnome	=	'Research'
-- Resposta 133000.00


-- Questão 13
SELECT
	sum(empregado.salario)	as salario
,	sum(empregado.salario) * 1.1 as salarioComAumento
FROM
	empregado
inner JOIN
	departamento	ON	empregado.dno	=	departamento.dnumero
inner JOIN
	trabalha_em		ON	empregado.ssn	=	trabalha_em.essn
inner JOIN
	projeto			ON	projeto.pnumero	=	trabalha_em.pno
WHERE
	projeto.pjnome			=	'ProductX'
-- resposta 60500.000

-- Questão 14
SELECT
	avg(empregado.salario)	as mediaSalarial
,	departamento.dnome
FROM
	empregado
inner JOIN
	departamento	ON	empregado.dno	=	departamento.dnumero
group by
	departamento.dnome
order BY
	1	asc
-- resposta Administration
USE hrcompany;

-- 1. Pasirinkite visus darbuotojus: parašykite SQL užklausą, kuri gautų
-- visus darbuotojų įrašus iš Employees lentelės. (TIP: turi būti išvesta visa
-- visų darbuotojų informacija)

select *
from employees;

-- 2. Pasirinkite tam tikrus stulpelius: parodykite visus vardus ir
-- pavardes iš Employees lentelės. (TIP: turi matytis tik vardai ir pavardės,
-- bet išvesti visi darbuotojai)

select FirstName, LastName
from employees;

-- 3. Filtruokite pagal skyrius: gaukite darbuotojų sąrašą, kurie dirba
-- HR skyriuje. (TIP: jungti su departments lentele, bet turi būti išvesta bent
-- jau darbuotojų vardai ir pavardės, kurie ir dirba šiame skyriuje)

select*
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID
where DepartmentName = 'HR';

select CONCAT (FirstName," ",LastName) as "Vardas, pavardė"
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID
where DepartmentName = 'HR';

-- 4. Surikiuokite darbuotojus: gaukite darbuotojų sąrašą, surikiuotą pagal
-- jų įdarbinimo datą didėjimo tvarka. (TIP: apie darbuotojus išveskite visą arba
-- pasirinktą informaciją, bet turi būti surikiuoti kaip pasakyta)

select *
from employees 
order by HireDate asc;

-- 5. Suskaičiuokite darbuotojus: raskite kiek iš viso įmonėje dirba darbuotojų.
-- (TIP: turi išsivesti vienas skaičiukas su darbuotojų skaičiumi)

select count(*) as "Darbotojų kiekis"
from employees;

-- 6. Sujunkite darbuotojus su skyriais: išveskite bendrą darbuotojų sąrašą,
-- šalia kiekvieno darbuotojo nurodant skyrių kuriame dirba. (TIP: būtų geriausia
-- jeigu būtų pateikta bent jau darbuotojų vardai ir pavardės, bei skyrių
-- pavadinimai, bet galite išvesti ir daugiau informacijos, netinka jei bus
-- pateikti tik darbuotojų id)

select CONCAT (FirstName," ",LastName) as "Vardas, pavardė", DepartmentName as "Skyrius"
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID;

-- 7. Apskaičiuokite vidutinį atlyginimą: suraskite koks yra vidutinis
-- atlyginimas įmonėje tarp visų darbuotojų. (TIP: turi gautis vienas skaičius
-- kaip atsakymas, kuriame aiškiai matytųsi visų darbuotojų bendras atlyginimo
-- vidurkis) (TIP2: atkreipkite dėmesį kad kiekvienas darbuotojas turi kelis
-- atlyginimus, jeigu sugebėsite ištraukti kiekvienam darbuotojai naujausią
-- pagal datą ir tik iš jo skaičiuoti vidurkį būtų labai super, bet jei nesigaus
-- reikėtų paimti bent jau bendrą lentelės vidurkį)

select avg(SalaryAmount) as vidurkisNuoPaskutiniuAtliginimu
from (select EmployeeID, SalaryAmount
		from salaries
		where(EmployeeID, SalaryEndDate) in
				(select EmployeeID, MAX(SalaryEndDate)
				from salaries
				group by EmployeeID)) as lentele;

-- select EmployeeID, SalaryAmount
-- from salaries
-- where (EmployeeID, SalaryEndDate) in 
-- 		(select EmployeeID, MAX(SalaryEndDate)
-- 		from salaries
-- 		group by EmployeeID);

-- select EmployeeID, MAX(SalaryEndDate)
-- from salaries
-- group by EmployeeID;


-- 8. Išfiltruokite ir suskaičiuokite: raskite kiek darbuotojų dirba IT skyriuje.
-- (TIP: turite gauti tik vieną skaičių su atsakymu, jokių darbuotojų
-- nereikia išvedinėti)

select count(EmployeeID) as"IT darbotojų skaičius"
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID
where DepartmentName = 'IT';

-- 9. Išrinkite unikalias reikšmes: gaukite unikalių siūlomų darbo pozicijų
-- sąrašą iš jobpositions lentelės. (TIP: jobpositions yra darbo skelbimai,
-- kurie nėra susiję su tikrais darbuotojais, bet tai nereiškia, kad šioje
-- lentelėje nėra duomenų, yra, tik nereikia su niekuo jungti) (TIP2: turite
-- gauti tik pavadinimų sąrašą)

select distinct PositionTitle
from jobpositions;

-- 10. Išrinkite pagal datos rėžį: gaukite darbuotojus, kurie buvo nusamdyti
-- tarp 2020-02-01 ir 2020-11-01. (TIP: suraskite nurodytus darbuotojus ir
-- išveskite visą ar pasirinktą informaciją apie juos)

select *
from employees 
where HireDate between '2020-02-01' and '2020-11-01';

-- 11. Darbuotojų amžius: gaukite kiekvieno darbuotojo amžių pagal tai kada
-- jie yra gimę. (TIP: išveskite bent jau darbuotojų vardus ir pavardes, dėl
-- pasitikrinimo būtų gerai ir gimimo metai, bei išskaičiuotą amžiaus stulpelį)

select concat(FirstName,' ' ,LastName) as 'Vardas, pavarde', DateOfBirth as "Gimimo metai",
year(current_date()) - year(DateOfBirth) as "Amžius"
from employees;

-- 12. Darbuotojų el. pašto adresų sąrašas: gaukite visų darbuotojų el. pašto
-- adresų sąrašą abėcėline tvarka. (TIP: neišvedinėkite nieko ko neprašo užduotis,
-- t.y. reikia tik el. pašto adresų ir daugiau nieko)

select Email
from employees
order by Email asc;

-- 13. Darbuotojų skaičius pagal skyrių: suraskite kiek kiekviename skyriuje
-- dirba darbuotojų. (TIP: išveskite tik skyrių pavadinimus ir kiekius kiek
-- kiekviename skyriuje dirba darbuotojų)

select DepartmentName, count(*) as kiekis
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID
group by DepartmentName;

-- 14. Darbštus darbuotojas: išrinkite visus darbuotojus, kurie turi 3 ar
-- daugiau įgūdžių (skills). (TIP: turite išvesti ne tik sąsają tarp duomenų,
-- bet ir pačių darbuotojų bent vardus su pavardėmis, galima aišku pateikti
-- ir daugiau informacijos apie tokius darbuotojus kurie turi tiek įgūdžių)

select concat(LastName, ' ',FirstName) as 'Vardas, pavardė', Gender, HireDate, count(*) as "Kiekis įgudžių"
from employeeskills as es
join employees as em
on es.EmployeeID = em.EmployeeID
group by LastName, FirstName, Gender, HireDate
having count(*)>=3;
    
-- 15. Vidutinė papildomos naudos kaina: apskaičiuokite vidutines papildomų
-- naudų išmokų (benefits lentelė) išlaidas darbuotojams. (TIP: įmonė turi
-- siūlomų naudų paketą, raskite tiesiog vidurkį kiek vidutiniškai viena
-- nauda kainuoja, čia jums nereikia jungti su jokiais darbuotojais ar aiškintis
-- kokia kaina susidaro iš darbuotojų kurie yra pasirinkę šias naudas)

select round(avg(Cost),2) as Vidurkis
from benefits;

-- 16. Jaunausias ir vyriausias darbuotojai: suraskite jaunausią ir vyriausią
-- darbuotoją įmonėje. (TIP: jeigu gaunasi išveskite per vieną užklausą, jeigu
-- ne išveskite per dvi atskiras užklausas) (TIP2: išveskite ne tik amžių ar
-- gimimo datą, bet ir visą informaciją apie darbuotojus)

select *, year(current_date()) - year(DateOfBirth) as amzius
FROM employees
where DateOfBirth = (select MAX(DateOfBirth )from employees)
or DateOfBirth = (select MIN(DateOfBirth )from employees);

-- 17. Skyrius su daugiausiai darbuotojų: suraskite kuriame skyriuje dirba
-- daugiausiai darbuotojų. (TIP: suraskite kuriame skyriuje yra daugiausiai
-- darbuotojų ir išveskite šio skyriaus informaciją, pvz jo pavadinimą, kiek
-- darbuotojų jame yra ir kt.)

select DepartmentName, count(*) as kiekis
from departments as d
join employees as e
on d.DepartmentID = e.DepartmentID
group by DepartmentName
having count(*)= (select max(kiekis)
				from (select count(*) as kiekis
					from employees
					group by DepartmentID) as lentele);     

-- select  count(*) as kiekis
-- from employees
-- group by DepartmentID;

-- select max(kiekis)
-- from (select count(*) as kiekis
-- 		from employees
-- 		group by DepartmentID) as lentele;   
   	
select d.DepartmentID, DepartmentName, kiekis
from departments d 
join (select d.DepartmentID, count(*) as kiekis
	 from departments as d
	 join employees as e
	 on d.DepartmentID = e.DepartmentID
	 group by DepartmentID
	 having count(*)= (select max(kiekis)
						from (select count(*) as kiekis
						from employees
						group by DepartmentID) as lentele)
                        ) as lent
                        ON d.DepartmentID=lent.DepartmentID;       
    
-- 18. Tekstinė paieška: suraskite visus darbuotojus su žodžiu "excellent"
-- jų darbo atsiliepime (performancereviews lentelė). (TIP: jeigu gaunasi tai
-- išveskite darbuotojų kurie turi tokius aprašymus informaciją, o jeigu
-- nesigauna tai bent jau tuos atsiliepimus kurie atitinka sąlygą)

select*
from employees as e
join performancereviews as p
on e.EmployeeID = p.EmployeeID
where ReviewText like "%excellent%" ;

-- 19. Darbuotojų telefono numeriai: išveskite visų darbuotojų ID su jų
-- telefono numeriais. (TIP: čia reikia išveskite tik ID ir jų telefono numerius,
-- jokia kita informacija nereikalinga)

select EmployeeID, Phone
from employees;

-- 20. Darbuotojų samdymo mėnesis: suraskite kurį mėnesį buvo nusamdyta
-- daugiausiai darbuotojų. (TIP: jums reikia išvesti tik mėnesio numerį arba
-- pavadinimą kuris atitiko duotą sąlygą, bei kiek darbuotojų tą mėnesį buvo
-- įdarbinta, neišvedinėkite viso sąrašo ir neieškokite konkrečių darbuotojų)

select monthname(HireDate) as month, count(*) as kiekis
from employees
group by monthname(HireDate)
having count(*) = (select max(kiekis)
					from (select monthname(HireDate), count(*) as kiekis
					from employees
					group by monthname(HireDate)) as kiekis);

-- 21. Darbuotojų įgūdžiai: išveskite visus darbuotojus, kurie turi įgūdį
-- "Communication". (TIP: jeigu galite išveskite ir šių darbuotojų informaciją,
-- tokią kaip vardas ar pavardė, bet jei nesigauna tai bent šių darbuotojų ID)

select *
from employeeskills as es
join employees as em
	on es.EmployeeID =em.EmployeeID
join skills as s
	on es.SkillID = s.SkillID
    where SkillName = "Communication";

-- 22. Sub-užklausos: suraskite kuris darbuotojas įmonėje uždirba daugiausiai
-- ir išveskite visą jo informaciją. (TIP: turi matytis tokio darbuotojo informacija,
-- o ne tik surastas didžiausias atlyginimas)

select *
from employees as e
join salaries as s
on e.EmployeeID = s.EmployeeID
where SalaryAmount = (select max(SalaryAmount)
					 from salaries);

-- 23. Grupavimas ir agregacija: apskaičiuokite visas įmonės išmokų (benefits
-- lentelė) išlaidas. (TIP: suskaičiuokite kiek iš viso įmonė išleidžia dėl visų
-- papildomų naudų, turi gautis vienas ir bendras skaičius, įvertinant, kad vieni
-- darbuotojai turi daugiau naudų, kiti mažiau, vieni)

select sum(cost) as total
from benefits as b
join employeebenefits as eb
on b.BenefitID= eb.BenefitID;

-- 24. Parodykite visus galimus įgūdžius. (TIP: turite parodyti tik įgūdžių pavadinimus,
-- su darbuotojais jungti nereikia)

select SkillName
from skills;

-- 25. Atostogų užklausos: išveskite sąrašą atostogų prašymų (leaverequests),
-- kurie laukia patvirtinimo. (TIP: turite išvesti tik tokius prašymus, kurie
-- atitinka nurodytą sąlygą, darbuotojų išvedinėti nereikia)

select *
from leaverequests
where LeaveType = "Vacation" and Status = "Pending";

-- 26. Darbo atsiliepimas: išveskite darbuotojus, kurie darbo atsiliepime yra
-- gavę 5 balus. (TIP: užduotyje parašyta išvesti darbuotojus, vadinasi, reikia
-- surasti ne tik tokius atsiliepimus, bet ir sujungti su darbuotojais, bei
-- išvesti bent jau jų vardus ir pavardes)

select e.EmployeeID, FirstName,LastName,Rating,ReviewText,ReviewDate
from employees as e
join performancereviews as p
on e.EmployeeID=p.EmployeeID
where Rating=5 
order by e.EmployeeID;

-- select distinct e.EmployeeID, FirstName, LastName, Rating
-- from employees as e
-- join performancereviews as p
-- on e.EmployeeID=p.EmployeeID
-- where Rating=5 
-- order by e.EmployeeID;

-- 27. Papildomų naudų registracijos: išveskite visus darbuotojus, kurie yra
-- užsiregistravę į "Health Insurance" papildomą naudą (benefits lentelė).
-- (TIP: turite sujungti su darbuotojais ir išvesti bent jau jų vardus ir
-- pavardes, kurie atitinka nurodytą sąlygą)

select em.EmployeeID, FirstName, LastName, BenefitName
from employeebenefits as eb
join employees as em
on eb.EmployeeID = em.EmployeeID
join benefits as b
on eb.BenefitID = b.BenefitID
where BenefitName="Health Insurance";

-- 28. Atlyginimų pakėlimas: parodykite kaip atrodytų atlyginimai darbuotojų,
-- dirbančių "Finance" skyriuje, jeigu jų atlyginimus pakeltume 10 %. (TIP:
-- turite parodyti bent šiek tiek darbuotojų informacijos, pvz vardus pavardes,
-- jų atlyginimus, ir pakeltus atlyginimus, o kad žinoti kurie darbuotojai tinka,
-- reikės jungti su departments lentele)

select d.DepartmentID, DepartmentName, FirstName, LastName, em.EmployeeID, SalaryAmount, SalaryAmount*1.1 as NaujaAlga
from departments as d
join employees as em
	on d.DepartmentID = em.DepartmentID
join salaries as s
	on em. EmployeeID= s.EmployeeID
where DepartmentName = "Finance";

-- 					select d.DepartmentID,DepartmentName ,FirstName,LastName, EmployeeID
-- 					from departments as d
-- 					join employees as em
-- 					on d.DepartmentID = em.DepartmentID
-- 					where DepartmentName = "Finance";

-- 					select *
-- 					from employees as em
-- 					join salaries as s
-- 					on em. EmployeeID= s.EmployeeID
-- 					where DepartmentID=2 ;

-- 					select *, SalaryAmount, SalaryAmount*1.1
-- 					from salaries
-- 					where EmployeeID in (6,17);

-- 29. Efektyviausi darbuotojai: raskite 5 darbuotojus, kurie turi didžiausią
-- darbo vertinimo (performance lentelė) reitingą. (TIP: jei nesigauna išveskite
-- bent tuos atsiliepimus, bet būtų geriau jei pavyktų išvesti ir pačių darbuotojų
-- informaciją)

select*
from employees as e
join performancereviews as p
on e.EmployeeID = p.EmployeeID
where e.EmployeeID in (select EmployeeID from
						(select EmployeeID, avg(Rating) as vertinimas
						from performancereviews
						group by EmployeeID
						order by vertinimas desc
						limit 5) as lentele);


select*
from employees as e
where e.EmployeeID in (select EmployeeID from
						(select EmployeeID, avg(Rating) as vertinimas
						from performancereviews
						group by EmployeeID
						order by vertinimas desc
						limit 5) as rezult);
                        
select*
from employees as e
join (select EmployeeID, avg(Rating) as vertinimas
	from performancereviews
	group by EmployeeID
	order by vertinimas desc
	limit 5) as lentele
	on e.EmployeeID = lentele.EmployeeID;
                        
-- 30. Atostogų užklausų istorija: gaukite visą atostogų užklausų istoriją
-- (leaverequests lentelė) darbuotojo, kurio id yra 1. (TIP: išveskite visą
-- informaciją apie tokius šio darbuotojo prašymus, paties darbuotojo nereikia)

select *
from leaverequests
where LeaveType = "Vacation" and  EmployeeID=1;

-- 31. Atlyginimų diapozono analizė: nustatykite atlyginimo diapazoną (minimalų
-- ir maksimalų) kiekvienai darbo pozicijai. (TIP: nemaišykit su jobspositions nes ten
-- yra skelbimų lenta ir ji su darbuotojais nėra susijus) (TIP2: turite išvesti
-- skyriaus pavadinimą, kokia mažiausia alga jame yra, ir kokia didžiausia alga)
-- (TIP3: būtų geriausia jei imtumėt vėliausias datas, o ne bet kurias pasitaikusias)

SELECT * from employees;
select d.DepartmentName, MAX(s.SalaryAmount), MIN(s.SalaryAmount)
from departments as d
join employees as em
	on d.DepartmentID = em.DepartmentID
join (select EmployeeID, SalaryAmount
	from salaries
	where (EmployeeID, SalaryEndDate) in (
		select EmployeeID, MAX(SalaryEndDate)
		from salaries
		group by EmployeeID)) as s
on em. EmployeeID= s.EmployeeID
group by d.DepartmentName;

-- select d.DepartmentName, MAX(SalaryAmount), MIN(SalaryAmount)
-- from departments as d
-- join employees as em
-- 		on d.DepartmentID = em.DepartmentID
-- join salaries as s
-- 		on em. EmployeeID= s.EmployeeID
-- group by d.DepartmentName;

-- SELECT EmployeeID, SalaryAmount
-- FROM salaries
-- WHERE (EmployeeID, SalaryEndDate) IN (
--     SELECT EmployeeID, MAX(SalaryEndDate)
--     FROM salaries
--     GROUP BY EmployeeID);

-- SELECT EmployeeID, MAX(SalaryEndDate)
-- FROM salaries
-- GROUP BY EmployeeID;

-- 32. Darbo atsiliepimo istorija: gaukite visą istoriją apie darbo atsiliepimus
-- (performancereviews lentelė), darbuotojo, kurio id yra 2. (TIP: išveskite visą
-- tokių atsiliepimų informaciją, paties darbuotojo informacijos nereikia)

select *
from performancereviews
where EmployeeID=2;

-- 33. Papildomos naudos kaina vienam darbuotojui: apskaičiuokite bendras papildomų
-- naudų išmokų išlaidas vienam darbuotojui (benefits lentelė). (TIP: turite gauti vieną
-- skaičių kaip galutinį atsakymą, šis skaičius yra bendras vidurkis kiek yra vidutiniškai
-- išleidžiama ant vieno darbuotojo per jo naudas)

select avg(vienasZmogKain) as vidurkis
from (select eb.EmployeeID, sum(cost) as vienasZmogKain
		from employeebenefits as eb
		join benefits as b
		on eb.BenefitID = b.BenefitID
		group by eb.EmployeeID)as lentele;

-- select eb.EmployeeID, sum(cost) as vienasZmogKain
-- from employeebenefits as eb
-- join benefits as b
-- 	on eb.BenefitID = b.BenefitID
-- group by eb.EmployeeID;

-- 34. Geriausi įgūdžiai pagal skyrių: išvardykite dažniausiai pasitaikančius
-- įgūdžius kiekviename skyriuje. (TIP: turite išvesti skyrių pavadinimus, o šalia
-- jų koks įgūdis jame pasitaikė dažniausiai, o jei taip sutraukti nesigauna tai bent
-- išvesti kiekvieną skyrių, jo įgūdį ir kiek kartų kartojasi jame ir surikiuoti kad
-- matytųsi bent pagal dažnumą)

select DepartmentName, sum(kiekis) as kiekisGalutinis
from (select d.DepartmentName,s.SkillName, count(*)as kiekis
from departments as d
join employees as em
	on d.DepartmentID = em.DepartmentID 
join employeeskills as es
	on em.EmployeeID = es.EmployeeID
join skills as s
	on es.SkillID = s.SkillID
group by d.DepartmentName,s.SkillName) as lentele
group by DepartmentName
order by kiekisGalutinis desc;

select d.DepartmentName,s.SkillName, count(*)as kiekis
from departments as d
join employees as em
	on d.DepartmentID = em.DepartmentID 
join employeeskills as es
	on em.EmployeeID = es.EmployeeID
join skills as s
	on es.SkillID = s.SkillID
group by d.DepartmentName,s.SkillName;

-- 35. Atlyginimo augimas: apskaičiuokite procentinį atlyginimo padidėjimą kiekvienam
-- darbuotojui, lyginant su praėjusiais metais. (TIP: turi matytis darbuotojų informacija,
-- pvz vardai ir pavardės, taip pat kiek procentų atlyginimas paaugo, o jei nepaaugo rašyti
-- 0 procentų)











-- 36. Darbuotojų išlaikymas: raskite darbuotojus, kurie įmonėje dirba daugiau
-- nei 5 metai ir kuriems per tą laiką nebuvo pakeltas atlyginimas. (TIP: išveskite
-- tokių darbuotojų informaciją, o ne tik id)

select distinct em.EmployeeID,em.FirstName,em.LastName 
from employees as em
join salaries as s
on em.EmployeeID = s.EmployeeID
join salaries as s5
on em.EmployeeID = s5.EmployeeID
where '2024-07-01' between s.SalaryStartDate and s.SalaryEndDate  and DATE_ADD(CURDATE(), INTERVAL -5 YEAR) between s5.SalaryStartDate and s5.SalaryEndDate 
and s.SalaryAmount = s5.SalaryAmount;

-- select * from salaries where YEAR(CURDATE()) - YEAR(SalaryEndDate)>=4;
-- select * from salaries s where DATE_ADD(CURDATE(), INTERVAL -5 YEAR) between s.SalaryStartDate and s.SalaryEndDate; 
-- select * from salaries s where '2024-07-01' between s.SalaryStartDate and s.SalaryEndDate; 
-- select * from salaries where EmployeeID=8;

-- select*
-- from employees
-- where YEAR(CURDATE()) - YEAR(HireDate)>=5;

-- select *
-- from employees as em
-- join salaries as s
-- on em.EmployeeID = s.EmployeeID 
-- where SalaryAmount = 72000
-- and YEAR(CURDATE()) - YEAR(HireDate)>5;

-- select SalaryAmount, SalaryStartDate, SalaryEndDate
-- from salaries;

-- select *
-- from employees as em
-- join salaries as s
-- on em.EmployeeID = s.EmployeeID
-- where em.EmployeeID  = 7 ;

-- 37. Darbuotojų atlyginimų analizė: suraskite kiekvieno darbuotojo atlygį
-- (atlyginimas (salaries lentelė) + išmokos už papildomas naudas (benefits lentelė))
-- ir surikiuokite darbuotojus pagal bendrą atlyginimą mažėjimo tvarka. (TIP: turi
-- matytis ir darbuotojo informacija ir jo atlyginimas, ir jo naudų bendra vertė)

select em.EmployeeID, FirstName, LastName, sum(SalaryAmount) as atlyginimas, sum(Cost) as nauda, sum(Cost) + sum(SalaryAmount) as viso
from employeebenefits as eb
join benefits as b
	on eb.BenefitID = b.BenefitID
join employees as em
	on eb.EmployeeID= em.EmployeeID
 join salaries as s
	on s.EmployeeID = em.EmployeeID
group by em.EmployeeID, LastName
order by viso desc;

-- select em.EmployeeID, LastName, SalaryAmount, Cost, sum(Cost) + sum(SalaryAmount)
-- from employeebenefits as eb
-- join benefits as b
-- 	on eb.BenefitID = b.BenefitID
-- join employees as em
-- 	on eb.EmployeeID= em.EmployeeID
--  join salaries as s
-- 	on s.EmployeeID = em.EmployeeID
-- group by em.EmployeeID, LastName, SalaryAmount, Cost;

-- 38. Darbuotojų darbo atsiliepimų tendencijos: išveskite kiekvieno darbuotojo vardą
-- ir pavardę, nurodant ar jo darbo atsiliepimas (performancereviews lentelė)
-- pagerėjo ar sumažėjo. (TIP: turi matytis kiekvienas darbuotojas, jo informacija ir
-- vertinimas ar pagerėjo ar ne)

select len1.*,lent2.*, len1.EmployeeID, len1.FirstName, len1.LastName, 
    CASE
		WHEN len1.Rating<lent2.Rating  THEN "Pagerėjo"
        WHEN len1.Rating>lent2.Rating  THEN "Sumažėjo" 
		ELSE "Nepasikeitė" 
	END AS tendencijos
from 
		(
        select em.EmployeeID, LastName, FirstName,Rating, ReviewDate,ReviewID
		from performancereviews as p
		join employees as em
		on p.EmployeeID =em.EmployeeID
        ) as len1 
		join 
		(
        select EmployeeID, Rating, ReviewDate,ReviewID
		from performancereviews
        ) as lent2
			on len1.EmployeeID=lent2.EmployeeID 
where len1.ReviewDate<lent2.ReviewDate;


select * ,
(
select 
CASE
		WHEN p.Rating<p1.Rating  THEN "Pagerėjo"
        WHEN p.Rating>p1.Rating  THEN "Sumažėjo" 
		ELSE "Nepasikeitė" 
	END AS tendencijos
 from performancereviews as p join performancereviews as p1 on p.EmployeeID=p1.EmployeeID and p.ReviewID!=p1.ReviewID and p.ReviewDate<p1.ReviewDate where p.EmployeeID=em.EmployeeID
) as tendencijos
from employees as em;

-- select * from performancereviews as p join performancereviews as p1 on p.EmployeeID=p1.EmployeeID and p.ReviewID<>p1.ReviewID and p.ReviewDate<p1.ReviewDate;





select a1.cod, a2.codreview, a1.title, a1.paper_year, a3.descri, a2.status,  null as criteria
  from jailton.paper a1, 
       jailton.paper_status a2,
	   jailton.digitallibrary a3
 where a1.cod = a2.codpaper
   and a3.cod = a1.codlibrary
   and a2.status = 'Accepted' 
--and a1.paper_year = 2019 
order by 1
union
select a1.cod, a2.codreview, a1.title, a1.paper_year, a3.descri, a2.status, a4.descri as criteria
  from jailton.paper a1, 
       jailton.paper_status a2,
	   jailton.digitallibrary a3,
	   jailton.criteria a4
 where a1.cod = a2.codpaper
   and a3.cod = a1.codlibrary
   and a2.codcriteria = a4.cod
 order by 1

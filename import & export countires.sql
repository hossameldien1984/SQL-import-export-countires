use sales;
select coalesce(exporters.country,importers.country) country, ex exports,im imports 
from 
(select companies.country , sum(coalesce(trades.value,0)) ex   
from companies left join trades
on companies.name=trades.seller
group by companies.country ) exporters
 join
(select companies.country,sum(coalesce(trades.value,0)) im
from companies left join trades
on companies.name=trades.buyer
group by companies.country) importers
on  exporters.country=importers.country
order by country;
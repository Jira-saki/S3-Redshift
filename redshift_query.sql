Query the Redshift cluster:
 
 -- Find total sales on a given calendar date.
 SELECT sum(qtysold)
 FROM   sales, date
 WHERE  sales.dateid = date.dateid
 AND    caldate = '2008-01-05';
 
 -- Find top 10 buyers by quantity.
 SELECT firstname, lastname, total_quantity
 FROM   (SELECT buyerid, sum(qtysold) total_quantity
         FROM  sales
         GROUP BY buyerid
         ORDER BY total_quantity desc limit 10) Q, users
 WHERE Q.buyerid = userid
 ORDER BY Q.total_quantity desc;
 
 -- Find events in the 99.9 percentile in terms of all time gross sales.
 SELECT eventname, total_price
 FROM  (SELECT eventid, total_price, ntile(1000) over(order by total_price desc) as percentile
        FROM (SELECT eventid, sum(pricepaid) total_price
              FROM   sales
              GROUP BY eventid)) Q, event E
        WHERE Q.eventid = E.eventid
        AND percentile = 1
 ORDER BY total_price desc;
 
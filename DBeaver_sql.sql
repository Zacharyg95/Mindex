/*This query pulls total yards for the reciever the data is avaialble.
 * Also pulls and formats the teams overall record for the season */
select Sum(Boyd_Yards) as "Boyd Yards",
       Sum(Higgins_Yards) as "Higgins Yards",
       Sum(Chase_Yards) as "Chase Yards",
       concat_ws('-', sum(case when "Result" = 'Win' then 1 else 0 end),sum(case when "Result" = 'Loss' then 1 else 0 end)) 
       as "Win/Loss"
from zachary_gay zg
where "Opponent" is not NULL;
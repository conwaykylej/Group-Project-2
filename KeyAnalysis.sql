select year,make,model,body_type, count(*) as rec_count
from  original_used_cars
group by year,make,model,body_type
order by year,make,model,body_type;

select * from original_used_cars
where make='Chevrolet'
and model= 'Avalanche'
and body_type = 'Pickup';
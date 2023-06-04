def calculete_bonus(days)
    bonus = case days
    if days <= 32
        0
    elsif days <=40
         (days - 32)* 365
    elsif days <=48
        bonus = 8 * 365 + (days-40)*525
    else 
        bonus = 8 * 365 + 8 * 525 + (days-48)*625
    end
 bonus
end 

days = 60
bonus = calculete_bonus(days)
 puts bonus
def convert_table(table)
    new_hash = Hash[table[0].map {|k| [k,[]]}]
    
    for i in 1..(table.length - 1)
        new_hash["first_name"] << table[i][0]
        new_hash["last_name"] << table[i][1]
        new_hash['city'] << table[i][2]
        new_hash['state'] << table[i][3]
    end
    new_hash
end
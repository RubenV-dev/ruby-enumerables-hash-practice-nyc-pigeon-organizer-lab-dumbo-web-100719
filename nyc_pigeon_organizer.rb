def nyc_pigeon_organizer(data)
  #attributes are :color,:gender,:lives
  #inner_keys are color range,gender and location keys
  
  new_hash = {}
  inner_hash = {}
  
  data.each do |attributes, name_hash|
    name_hash.each_pair do |inner_keys, name_array|
      name_array.each do |pigeon_name|
        inner_hash[attributes] = []
      if !new_hash[pigeon_name]
          new_hash[pigeon_name] = inner_hash
      end
    
      if (name_array.include? pigeon_name && !(inner_hash[attributes].include? inner_keys.to_s))
          inner_hash[attributes].push(inner_keys.to_s)
      end
      
      
      end
    end
  end
 # inner_hash
  new_hash
  #p data
  p new_hash
end

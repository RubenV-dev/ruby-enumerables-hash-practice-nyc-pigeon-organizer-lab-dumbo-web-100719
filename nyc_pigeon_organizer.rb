def nyc_pigeon_organizer(data)
  
  new_hash = {}
  
  data.each_pair do |attributes, name_hash|
    name_hash.each_pair do |inner_keys, name_array|
      name_array.each do |pigeon_name|
        new_hash[pigeon_name][attributes] = []
      if new_hash[pigeon_name].nil?
          new_hash[pigeon_name] = {}
      end
      
      if new_hash[pigeon_name][inner_keys].nil?
        new_hash[pigeon_name][inner_keys] = []
      end
      
      new_hash[pigeon_name][attributes] << inner_keys
  
     # if name_array.include? pigeon_name #&& !(inner_hash[attributes].include? inner_keys.to_s))
      #    inner_hash[attributes].push(inner_keys.to_s)
      #end
      
      
      end
    end
  end
 # inner_hash
  new_hash
  #p data
  p new_hash
end

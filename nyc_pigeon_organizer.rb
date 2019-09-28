def nyc_pigeon_organizer(data)
  
  new_hash = {}
  
  data.each_pair do |attributes, name_hash|
    name_hash.each_pair do |inner_keys, name_array|
      name_array.each do |pigeon_name|
    
      if new_hash[pigeon_name].nil?
          new_hash[pigeon_name] = {}
      end
      
      if new_hash[pigeon_name][:color].nil?
        new_hash[pigeon_name][:color] = []
      end
      
      #new_hash[pigeon_name][attributes] << inner_keys
      
      end
    end
  end
  new_hash
  p new_hash
end

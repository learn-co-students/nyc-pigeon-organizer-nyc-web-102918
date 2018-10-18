def nyc_pigeon_organizer(data)	
  organized = {}	
   data.each do |trait, options|	
    options.each do |option, pigeons|	
      pigeons.each do |pigeon|	
        organized[pigeon] ||= {}	
        organized[pigeon][trait] ||= ''	
        if organized[pigeon][trait].size > 0	
          organized[pigeon][trait] = (organized[pigeon][trait].split << option.to_s).flatten	
        else	
          organized[pigeon][trait] = option.to_s	
        end	
      end	
    end	
     array = false	
    organized.keys.each do |pigeon|	
      if organized[pigeon][trait].is_a?(Array)	
        array = true	
      end	
    end	
     if array	
      organized.each do |pigeon, traits|	
        if !organized[pigeon][trait].is_a?(Array)	
          organized[pigeon][trait] = [organized[pigeon][trait]]	
        end	
      end	
    end	
   end
 
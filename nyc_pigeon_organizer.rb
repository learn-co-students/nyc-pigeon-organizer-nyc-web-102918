def nyc_pigeon_organizer(data)
  out = {}
  data.each do |key, val|
    val.each do |k, v|
      v.each do |birb|
        unless out[birb]
          out[birb] = {}
        end
        
        unless out[birb][key]
          out[birb][key] = []
        end
        
        out[birb][key] << k.to_s
      end
    end
  end
  
  out
end
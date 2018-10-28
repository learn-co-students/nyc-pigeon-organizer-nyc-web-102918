def nyc_pigeon_organizer(data)
new_pigeon_data = {}
  data.each do |cgl, value|
   value.each do |attribute, name_array|
     name_array.each do |name|
       new_pigeon_data[name] = {:color => [], :gender => [], :lives => []}
     end
   end
 end
 data[:color].each do |color_title, name_array|
   name_array.each do |name|
     if data[:color][color_title].include?(name)
       new_pigeon_data[name][:color] << color_title.to_s
     end
   end
 end
 data[:gender].each do |male_female, name_array|
   name_array.each do |name|
     if data[:gender][male_female].include?(name)
       new_pigeon_data[name][:gender] << male_female.to_s
     end
   end
 end
 data[:lives].each do |location, name_array|
   name_array.each do |name|
     if data[:lives][location].include?(name)
       new_pigeon_data[name][:lives] << location.to_s
     end
   end
 end
 new_pigeon_data
end

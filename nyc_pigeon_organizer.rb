require "pry"

def nyc_pigeon_organizer(data)
  organized_data = {}
  attribute_array = data.keys
  data.each do |attribute, detail|
    detail.each do |spec, names|
      names.each do |name|
        organized_data[name] = {}
      end
    end
  end
 pigeon_names = organized_data.keys
 organized_data.each do |name, data|
   attribute_array.each do |att|
     organized_data[name][att] = []
   end
 end
 pigeon_names.each do |name|
   data.each do |attribute, detail|
     detail.each do |spec, names|
       if names.include?(name)
         organized_data[name][attribute] << "#{spec}"
       end
     end
   end
 end
 organized_data

end

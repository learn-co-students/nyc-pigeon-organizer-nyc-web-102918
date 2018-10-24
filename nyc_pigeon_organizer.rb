require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  
  pigeon_list = {}
  
  data.each do |attribute, attribute_data|
    attribute_data.each do |k, v_array|
      v_array.each do |name|
        unless pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        if pigeon_list[name].has_key?(attribute) == false
          pigeon_list[name][attribute] = []
          if v_array.include?(name)
            pigeon_list[name][attribute] << k.to_s
          end
        else
          pigeon_list[name][attribute] << k.to_s
        end
      end
    end
  end
  pigeon_list
end
require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |key, value|
    value.each do |attribute, info|
      info.each do |name|
        if !pigeon_list.include?(name)
          pigeon_list[name] = {}
        end
        if !pigeon_list[name].include?(key)
          pigeon_list[name][key] = []
        end
        if !pigeon_list[name][key].include?(attribute)
          pigeon_list[name][key] << attribute.to_s
        end
      end
    end
  end
  pigeon_list
end

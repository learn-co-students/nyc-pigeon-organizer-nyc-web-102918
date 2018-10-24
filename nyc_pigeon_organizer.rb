def nyc_pigeon_organizer(pigeon_data)

  pigeon_list = {}

  pigeon_data.each do |data_type, data|
    data.each do |data_type_each, pigeon_names|

      pigeon_names.each do |name|
        if !pigeon_list[name].kind_of?(Hash)
          pigeon_list[name] = {} # need a condition prevent overwrite.
        end

        if !pigeon_list[name][data_type].kind_of?(Array)
          pigeon_list[name][data_type] = [] # need a condition from overwrite
        end

        pigeon_list[name][data_type].push(data_type_each.to_s) # assign each color to each name[color].
      end

    end
  end

  pigeon_list
end

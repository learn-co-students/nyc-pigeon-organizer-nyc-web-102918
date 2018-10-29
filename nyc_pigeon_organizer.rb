def nyc_pigeon_organizer(data)
  new_array = {}
  data.each do |key, value|
    value.each do |category, array|
      array.each do |name|
        new_array[name] = {:color => [], :gender => [], :lives => []}
      end
    end
  end
  x = new_array.keys
  data[:color].each do |key, value|
    value.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_array[item][:color] << key.to_s
        end
      end
    end
  end
  data[:gender].each do |gender, type|
    type.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_array[item][:gender] << gender.to_s
        end
      end
    end
  end
  data[:lives].each do |places, name|
    name.each do |bird_name|
      x.each do |item|
        if bird_name === item
          new_array[item][:lives] << places
        end
      end
    end
  end
  return new_array
end
 # write your code here!

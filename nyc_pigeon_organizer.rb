require 'pry'
        # :color => {
        #   :purple => ["Theo", "Peter Jr.", "Lucky"],
        #   :grey => ["Theo", "Peter Jr.", "Ms. K"],
        #   :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
        #   :brown => ["Queenie", "Alex"]},
        # :gender => {
        #   :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
        #   :female => ["Queenie", "Ms. K"]},
        # :lives => {
        #   "Subway" => ["Theo", "Queenie"],
        #   "Central Park" => ["Alex", "Ms. K", "Lucky"],
        #   "Library" => ["Peter Jr."],
        #   "City Hall" => ["Andrew"]}

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, trait| # color, purple hash
    trait.each do |indiv_trait, birds| # purple, array of birds
      birds.each do |bird| # birds are the keys of the new hash
        if pigeon_list.key?(bird) #does the new hash have the bird as a key yet? if yes...
          if pigeon_list[bird].key?(category) # is the category yet a key of the inner bird hash?
            pigeon_list[bird][category] << indiv_trait.to_s # if so, then the array of values already exists, and you push on the array
          else
            pigeon_list[bird][category] = [indiv_trait.to_s] # if not, then you're creating a new array with that indiv trait
          end
        else pigeon_list[bird] = {category => [indiv_trait.to_s]} # and if the category wasn't a key yet at all, you're adding the keys and values at the same time
        end
      end
    end
  end
  pigeon_list
end
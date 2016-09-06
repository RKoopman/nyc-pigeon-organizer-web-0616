require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# 1) create new hash called 'pigeion_list' [done]
# 2) get a list of all the pigeons [done]
# 3) set the name of each pigeon as the key within a new hash called 'pigeon_list' [done]
# 4) set



#
# def nyc_pigeon_organizer(pigeon_data)
#   pigeon_list = {} #1
#   pigeon_name_array = [] #2
#   pigeon_name_array.push(pigeon_data[:gender].values.flatten)
#   pigeon_name_array.flatten! #list of all the pigeons, doesn't repeat.
#
#   pigeon_name_array.each_with_object do |name, info|
#
#   binding.pry
# end


def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {} # create new hash

  pigeon_data.each do |trait, types| # seperate each trait and it's types
    # binding.pry
    types.each do |type, pigeons| # seperate each type to get to the names
      # binding.pry
      pigeons.each do |pigeon|
        # binding.pry
        pigeon_list[pigeon] ||= {}          #used this instead of having to create a new pigeon array.
        pigeon_list[pigeon][trait] ||= []
        pigeon_list[pigeon][trait] << type.to_s
      end
    end
  end
  pigeon_list
end





























#
# def build_initial_structure
#   #new data structure to fill in list of names
#   # get all the pigeons into one array
#   pigeon_data[:gender][:male] + pigeon_data[:gender][:female]
#   # names = ["Theo", "Peter Jr.", "Lucky", "Ms. K", "Queenie", "Andrew", "Alex"]
#   # split them up into male/female.
#   # {"Theo" => {}, "Peter Jr." => {}}
#   names.each_with_object({}) do |name, initial_structure|
#     #construct another list hash where keys are the attributed and values are arrays.
#     initial_structure[name] = {color: [], gender: [], lives: []}
#
#     attributes = data.keys
#       attributes_hash = attributes.each_with_object({}) do | attribute, attributes_hash|
#       attributes_hash[attribute]
#     ##fill in the data structure
#     end
#   end
# end
#
# def fill_in_structure
#   # you have a list (pigeon_list.hash) - push in each bird(key) into the list -
#   # push list of attributes to each bird(key)
#
#   #pick one attribute at a time (color)
#
# # 1. go through the list of colors
#   #for each color, go through each pigeon
#     #for each pigeon , add in respective color
# #  data[:color].each do |color, names|
# #    names.each do |names|
# #      initial_structure[name][:color] << color.to_s
# #      binding.pry
#
# # 2. now edit previous code to apply to all attribute and not just color
#   data.keys.each_with_object do |attribute, working_hash|
#     data[attribute].each do |(trait, names)|
#       names.each do |names|
#         working_hash[name][attribute] << trait.to_s
#       end
#     end
#   end
# end

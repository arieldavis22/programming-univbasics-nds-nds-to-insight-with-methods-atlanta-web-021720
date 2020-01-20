$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #pp director_data
  total = 0
    movie_index = 0
    binding.pry
    while movie_index < director_data[:movies].length do
      total += director_data[:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  name_index = 0
  grand_total = 0
  #binding.pry
  while name_index < nds.length do
    grand_total += gross_for_director(nds)
    result[nds[name_index][:name]] = grand_total
    name_index += 1
  end
  result
end

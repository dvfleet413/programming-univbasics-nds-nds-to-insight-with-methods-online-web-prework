require 'directors_database'
require 'pp'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  
  director_index = 0
  
  while director_index < nds.length do
    #puts "nds[#{director_index}] prints..."
    #pp nds[director_index]
    
    name_key = nds[director_index][:name] 
    director_total = gross_for_director(nds[director_index])
    
    result[name_key] = director_total
    
    director_index += 1
  end
  nil
  #pp nds
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  director_total = 0
  movie_index = 0
  
  while movie_index < director_data[:movies].length do
    director_total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  
  director_total
  
  #pp director_data
end

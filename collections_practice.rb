require 'pry' 

def begins_with_r(array)
  array.each do |element|
    if element.chars.first != "r"
      return false
      break
    end
  end
  true
end

def contain_a(array)
  array.map do |element|
    element.chars.include?("a") ? element : nil
  end.compact
end

def first_wa(array)
  array.each do |element|
    if element.to_s.start_with?("wa")
      return element
      break
    end
  end
end

def remove_non_strings(array)
  array.map do |str|
    if str.is_a?(String)
      str
    end
  end.compact
end

def count_elements(array)
  array.map do |element|
    i = 0
    z = 0
    while i < array.count
      if element == array[i]
        z += 1
      end
      i += 1
    end
    element.merge({:count => z})
  end.uniq
end

def merge_data(keys,data)
  merged_data = []
  keys.each do |key_hash|
    key_hash.each do |key,value|
      data.each do |data_hash|
        data_hash.each do |name,stats|
          if value == name
            merged_data << key_hash.merge(stats)  
          end
        end
      end
    end
  end
  merged_data
end

def find_cool(arr)
  cool_arr = []
  arr.each_with_index do |hash,index|
    if hash[:temperature] == "cool"
      cool_arr << arr[index]
    end
  end
  cool_arr
end

def organize_schools(schools)
  organized = {}
  schools.each do |school,location_hash|
    organized[location_hash.values.join] ||= []
    location_hash.each do |data_point,location|
      organized[location] << school
    end
  end
  organized
end









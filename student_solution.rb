hello_world = "Bonjour le Monde"

adjective = "Big Bad"

"Hello #{adjective} World"
# "Hello Big Bad World"

hello_world.upcase
# "BONJOUR LE MONDE"

#################################################################################

nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

nums.uniq
# [5, 6, 7, 2, 4, 3, 1, 9, 0, 35, 19, 66, 22, 21, 12, 15]

nums.push 5
nums.pop
nums.shift
nums.unshift 5
nums.length
# 30

nums.include? 8
# false

nums.find_all { |i| i > 10}
# [35, 19, 66, 22, 21, 12, 15]

nums.all? {|i| i > 0 }
# false

nums.any? { |i| i % 8 == 0}
# true

nums.count { |i| i > 4}
# 14

nums.each_with_index { |item, index| 
  # p item * index
}

nums.find { |i| i > 0 && i % 7 == 0 && i % 5 ==0 }
# 35

nums.find_index {|i| i > 0 && i % 7 == 0 && i % 5 ==0 }
# 14

nums.first 3
# [5, 5, 6]

nums.last 5
# [2, 3, 4, 12, 15]

nums.group_by { |i| i % 3 }
# {2=>[5, 5, 2, 2, 35, 2], 0=>[6, 3, 9, 6, 0, 0, 66, 3, 21, 0, 3, 12, 15], 1=>[7, 4, 1, 7, 19, 22, 4, 4, 4, 1, 4]}

nums.minmax
# [0, 66]

nums.reject { |i| i % 3 == 0 }
# [5, 5, 7, 2, 4, 2, 1, 7, 35, 19, 22, 4, 4, 4, 1, 2, 4]

nums.select { |i| i % 5 == 0 }
# [5, 5, 0, 0, 35, 0, 15] 

#################################################################################

colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

colors.sample
# "yellow"

colors.reverse
# ["violet", "indigo", "blue", "green", "yellow", "orange", "red"]

colors.map { |color| color.upcase }
# ["RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "INDIGO", "VIOLET"]

#################################################################################

def find_area height, width
  height * width
end

find_area 4,5
# 20

numeros = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]

def multiply_each_by_five array
  array.map { |i| i * 5}
end

multiply_each_by_five numeros
# [25, 25, 30, 35, 10, 20, 15, 10, 5, 45, 35, 30, 0, 0]

#################################################################################

book = {
  title: 'The Great Gatsby',
  author: 'F Scott Fitzgerald',
  year: 1925,
  price: 10
}

lamp = {
  type: 'reading',
  brand: 'Ikea',
  price: 25
}

table = {
  type: 'bed side',
  brand: 'Crate & Barrel',
  color: 'birch',
  price: 50
}

def print_price hsh
  hsh[:price]
end

print_price table
# 50

def print_item_sums hsh1, hsh2
  price1 = hsh1[:price]
  price2 = hsh2[:price]

  sum = price1 + price2
end

print_item_sums table, table
# 100

#################################################################################


#################################################################################


#################################################################################

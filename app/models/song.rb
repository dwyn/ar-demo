class Song < ApplicationRecord
  belongs_to :artist#, optional: :true
end

test.list_my_num
[2, 1, 2, 8, 1, 0, 1, 1, 1,1].each do |number|
  puts number
end

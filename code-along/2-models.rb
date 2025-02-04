# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "there are #{Company.all.count} companies"

# 2. insert new rows in companies table
new_company = Company.new
puts new_company.inspect

new_company ["name"] = "Apple"
new_company ["city"] = "Cupertino"
new_company ["state"] = "CA"
new_company ["url"] = "https://www.apple.com"

puts new_company.inspect
puts "there are #{Company.all.count} companies"

new_company.save

new_company2 = Company.new
puts new_company2.inspect

new_company2 ["name"] = "Meta"
new_company2 ["city"] = "Menlo Park"
new_company2 ["state"] = "CA"
new_company2 ["url"] = "https://www.facebook.com"

puts new_company2.inspect
puts "there are #{Company.all.count} companies"

new_company2.save

# 3. query companies table to find all row with California company

cali_companies = Company.where({"state" => "CA"})
#puts cali_companies.inspect# -> "for noise purposes"
puts "Cali companies"

# 4. query companies table to find single row for Apple

apple = new_company.where ({"name" => "Apple"})
puts apple.inspect

apple = new_company.find_by ({"name" => "Apple"})
puts apple.inspect

# 5. read a row's column value

apple_url = apple["url"]
puts apple_url

# 6. update a row's column value

apple = new_company.find_by ({"name" => "Apple"})
puts apple.inspect
apple ["url"] = "https://apple.com"
apple.save
puts apple.inspect

# 7. delete a row


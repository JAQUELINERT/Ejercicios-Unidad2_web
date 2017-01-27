# begin
# 10.times do |number| puts "5 x #{number+1} = #{(number+1)*5}"
#end

# print_table = Proc.new do |number|
 # puts "5 x #{number+1} = #{(number+1)*5}"
#end
#10.times &print_table

#full_name = Proc.new do |first, last|
#  puts "#{last}, #{first}"
#end
#full_name.call('Tacho', 'Rodriguez')

#full_name = Proc.new do |first: name, last: surname|
 # puts "#{last}, #{first}"
#end
#full_name.call(first: 'Tacho', last: 'Rodriguez')
#full_name.call(last: 'Rodriguez', first: 'Tacho')

#def load_users(database, &block)
  #puts database
  #puts block.class
  #puts block.source_location
 # puts block.parameters
  #block.call(first: 'Tacho', last: 'Rodriguez')
#end
#load_users('users.sqlite3', &full_name)

#users = ['Maria', 'Ramon', 'Victor', 'Juan']
#def last_user(users)
#  yield(users.last.downcase) if block_given?
 # users.last
#end
#last_user(users) do |user|
 # puts "El ultimo usuario es: #{user}"
#end
#puts last_user(users)

#full_name = Proc.new do |first: 'Maria', last: 'Sanchez', **list|
 # puts "#{last}, #{first}: #{list}"
#end
#full_name.call(first: 'Ramon', last: 'Ayala', birth: 1982, male: true)
#full_name.call(birth: 1990, female: true)

#full_name = lambda do |first: 'Maria', last: 'Sanchez', **list|
 # puts "#{last}, #{first}: #{list}"
#end
#full_name.call(first: 'Ramon', last: 'Ayala', birth: 1982, male: true)
#full_name.call(birth: 1990, female: true)

block_proc = proc do |a, b|
  [a, b]
end
block_lambda = lambda do |a, b|
  [a, b]
end
p block_proc.call('A', true, 2)
p block_proc.call('A')
p block_proc.call(['A', false])
# p block_lambda.call('A', true, 2)
# p block_proc.call('A')
# p block_proc.call(['A', false])
p block_proc.lambda?
p block_lambda.lambda?
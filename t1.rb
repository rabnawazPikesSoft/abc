require 'csv'

#operationc class it perfom read and insert opetion 
class Operation
  def initialize(file_name)
    @file_name=file_name
  end
  def open_file

  end
def read_data
    @data = CSV.read(@file_name,:headers=>true)
end
 
  def insert_row(name,squ,price,sale,quatity)
      CSV.open(@file_name,"a") do |row|
      row << [name, squ,price,sale,quatity]
      end
    end
  def display
    print "NAME\tSQU\tPRICE\tSALES\tQUANTITY\n"
    @data.each { |row| print "#{row['NAME']}\t#{row['SQU']}\t#{row['PRICE']}\t#{row['SALES']}\t#{row['QUANTITY']}\n"  }
  end


end

#  main menu 
loop do
puts " 1 READ   :"
puts " 2 Insert :"
puts " 3 Exit/Quit :"
puts "Select option"


option =0
option = gets.to_i
file_name = "/home/mashhood/Desktop/csv task/data.csv"

obj = Operation.new(file_name)

if option == 1
  obj.read_data
  obj.display
elsif option == 2
  product_squ_number =0
  product_name = 0
  product_price = 0
  product_sales = 0
  product_quantity = 0

puts "Enter Prodcut SQU Number :"
product_squ_number= gets.chomp
puts "Enter Prodcut name :"
product_name = gets.chomp
puts "Enter product Price :"
product_price = gets.chomp
puts "Enter product sales :"
product_sales = gets.chomp
puts "Enter prodict quantity :"
product_quantity = gets.chomp
obj.insert_row(product_name,product_squ_number,product_price,product_sales,product_quantity);
elsif option == 3
  break
end
end
    




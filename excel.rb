#require 'bundler'
require 'spreadsheet'
book=Spreadsheet::Workbook.new
sheet1=book.create_worksheet
sheet1.row(0).concat %w{file_size,file_name,file_path}
path=""
i=1
while path !="q"
puts "Enter a directory or q to quit"
    path= gets.chomp()
    puts path
    name=File.basename(path)
    puts name
    size=File.size(name)
    puts size
    sheet1.row(i).push size,name,path
    book.write 'file_list.xls'
    i=i+1
end
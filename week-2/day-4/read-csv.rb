require 'csv'
lines =CSV.readlines("grades.csv", liberal_parsing: true, headers: true)
headers = lines.headers
lines.each{ |line| 
     line.to_hash
}
.sort_by {|hsh| - hsh[headers[-2]].to_f}
.first(3)
.each_with_index {|hsh, index|
    puts "#{index+1} - #{hsh[headers[1]].strip[1..-2]} with a final grade of #{hsh[headers[-2]].strip}"
}

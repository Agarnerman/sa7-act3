require "csv"
csv_data = []
CSV.foreach("data.csv", headers: true) do |row|
    csv_data << row.to_hash
end

puts csv_data.inspect
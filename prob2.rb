def parse_invoices(invoice_data)
    pattern = /(\d{4}-\d{2}-\d{2}) - ([a-zA-Z0-9]+) - ([a-zA-Z\s]+) - (\$[\d]+)/
    result = invoice_data.scan(pattern)
    length = result.length
    for i in 0...length do 
        puts "Date: #{result[i][0]}, Invoice Number: #{result[i][1]}, Client: #{result[i][2]}, Amount: #{result[i][3]}"
    end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
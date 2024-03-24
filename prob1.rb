def extract_urls(text)
    pattern = /((http|ftp|https)\:\/\/[a-zA-Z0-9.-]+\.[a-zA-Z0-9.-]+[a-zA-Z]{2,}+(\/[^\s]*)?)/
    result = text.scan(pattern)
    length = result.length
    for i in 0...length do 
        puts result[i][0]
    end
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
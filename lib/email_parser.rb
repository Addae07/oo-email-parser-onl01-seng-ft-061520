# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')


class EmailAddressParser
attr_accessor :parse



def initialize(email_addresses)
  @email_addresses = email_addresses.strip
end

def parse

  emails = @email_addresses.split(/[, ]/)
  ith_index do |email, index|

    count = emails.count(email)

    if count >= 2
     emails.delete_at(index)


   elsif email.empty?
      emails.delete_at(index)

    end
  end


  emails.each_with_index do |email, index|

    if email.empty?
      emails.delete_at(index)
    end

  end
end








end

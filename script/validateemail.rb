
def validate_email(email)
    
    regex_emailpattern = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   
    !!(email =~ regex_emailpattern)
end

return validate_email